local cmp = require "cmp"
local lspkind = require("lspkind")
local luasnip = require("luasnip")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local compare = require("cmp.config.compare")
require("completition.blade.init")

local function formatForTailwindCSS(entry, vim_item)
	if vim_item.kind == "Color" and entry.completion_item.documentation then
		local _, _, r, g, b = string.find(entry.completion_item.documentation, "^rgb%((%d+), (%d+), (%d+)")
		if r then
			local color = string.format("%02x", r) .. string.format("%02x", g) .. string.format("%02x", b)
			local group = "Tw_" .. color
			if vim.fn.hlID(group) < 1 then
				vim.api.nvim_set_hl(0, group, { fg = "#" .. color })
			end
			vim_item.kind = "●"
			vim_item.kind_hl_group = group
			return vim_item
		end
	end
	vim_item.kind = lspkind.symbolic(vim_item.kind) and lspkind.symbolic(vim_item.kind) or vim_item.kind
	return vim_item
end

local M = {}

function M.setup()
	cmp.setup({
		mapping = cmp.mapping.preset.insert({
			["<C-d>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-e>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.close()
				elseif luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				else
					fallback()
				end
			end, { "i", "s" }),
			["<C-n>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.choice_active() then
					luasnip.change_choice(1)
				else
					fallback()
				end
			end, { "i", "s" }),
			["<C-p>"] = cmp.mapping.select_prev_item(),
			["<CR>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Insert,
				select = true,
			}),
			["<c-space>"] = cmp.mapping.complete(),
		}),
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "path" },
			{ name = "luasnip" },
			{ name = "nvim_lua" },
			{ name = "codeium" },
			--{ name = "buffer",  keyword_length = 4 },
			{
				name = "buffer",
				keyword_length = 4,
				option = {
					get_bufnrs = function()
						local bufs = {}
						for _, win in ipairs(vim.api.nvim_list_wins()) do
							local bufnr = vim.api.nvim_win_get_buf(win)
							if vim.api.nvim_buf_get_option(bufnr, "buftype") ~= "terminal" then
								bufs[bufnr] = true
							end
						end
						return vim.tbl_keys(bufs)
					end,
				},
			},
		}),
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},

		formatting = {
			format = lspkind.cmp_format({
				with_text = true,
				maxwidth = 50,
				before = function(entry, vim_item)
					vim_item = formatForTailwindCSS(entry, vim_item)
					return vim_item
				end,
				menu = {
				buffer = "[buf]",
				nvim_lsp = "[ ]",
				nvim_lua = "[api]",
				path = "[path]",
				luasnip = "[snip]",
				Codeium = "", 
				},
			}),
		},

		sorting = {
			priority_weight = 2,
			comparators = {
				compare.kind,
				compare.sort_text,
			},
		},

		experimental = {
			native_menu = false,

			ghost_text = false,
		},
	})
	--vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })

	cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
	-- Set configuration for specific filetype.
	cmp.setup.filetype("gitcommit", {
		sources = cmp.config.sources({
			{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
		}, {
			{ name = "buffer" },
		}),
	})

	-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline("/", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	})

	-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})

	cmp.setup.filetype({ "sql", "mysql", "plsql" }, {
		sources = cmp.config.sources({
			{ name = "vim-dadbod-completion" },
		}, {
			{ name = "buffer" },
		}),
	})
	vim.cmd([[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]])
end

return M

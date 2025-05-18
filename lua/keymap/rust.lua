local hydra = require "hydra"

--vim.keymap.set("n", "<leader>rd", vim.cmd.Rustlsp, { noremap = true, desc = "rust debug" })
--vim.keymap.set("n", "<leader>rd", vim.lsp.buf.definition, { noremap = true, desc = "rust debugable" })
vim.keymap.set("n", "<leader>rh", "<Cmd> RustLsp hover actions <CR>", { noremap = true, desc = "rustlsp hover actions" })

--_rc_: RustLsp renderDiagnostic cyrcle ^
local hint = [[
 RUST
 _m_: Rust expandMacro _rm_: Rust rebuil proc macros _rh_: Rustlsp Hover Ranger ^
 _ec_: Rustlsp ExplainErrorCycle _ep_: Rustlsp ExplainErrorPrev  _xc_: Rustlsp ExplainErrorCurrent ^
 _rc_: Rustlsp RenderDiagnostic Current ^
 _rp_: Rustlsp RenderDiagnostic Cyrcle_prev ^
 _dc_: Rustlsp RenderDiagnostic Current _rd_: Rustlsp relatedDiagnostics ^
 _oc_: Rustlsp opencargo toml _od_: Rustlsp opendocs _pm_: Rustlsp parentModule ^
 ^^                                                      _<Esc>_
]]

hydra {
	name = "Rustlsp",
	hint = hint,
	mode = "n",
	config = {
		color = "red",
		invoke_on_body = true,
		hint = {
			border = "rounded",
			position = "bottom",
		},
	},
	body = "<leader>o",
	heads = {
		{ "m", function()
			vim.cmd.RustLsp('expandMacro')
		end },
		{ "rm", function()
			vim.cmd.RustLsp('rebuildProcMacros')
		end },
		{ "rh", function()
			vim.cmd.RustLsp { 'hover', 'range' }
		end
		},
		{ "ec", function()
			vim.cmd.RustLsp({ 'explainError', 'cycle' })
		end
		},
		{ "ep", function()
			vim.cmd.RustLsp({ 'explainError', 'cycle_prev' })
		end },
		{ "xc", function()
			vim.cmd.RustLsp({ 'explainError', 'current' })
		end },
		{ "rc", function()
			vim.cmd.RustLsp({ 'renderDiagnostic', 'cycle' })
		end },
		{ "rp", function()
			vim.cmd.RustLsp({ 'renderDiagnostic', 'cycle_prev' })
		end },
		{ "dc", function()
			vim.cmd.RustLsp({ 'renderDiagnostic', 'current' })
		end },
		{ "rd", function()
			vim.cmd.RustLsp('relatedDiagnostics')
		end },
		{ "oc", function()
			vim.cmd.RustLsp('openCargo')
		end },
		{ "od", function()
			vim.cmd.RustLsp('openDocs')
		end },
		{ "pm", function()
			vim.cmd.RustLsp('parentModule')
		end },
		{ "<Esc>", nil, { exit = true } },
	},
}

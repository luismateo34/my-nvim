require("dap-vscode-js").setup({
	debugger_cmd = { "js-debug-adapter" },
	debugger_path = "/home/luis/.local/share/nvim/mason/bin/vscode-js-debug",
	adapters = { "pwa-node", "pwa-chrome", "node-terminal" },
})
--- node
for _, language in ipairs({ "typescript", "javascript" }) do
	require("dap").configurations[language] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			cwd = "${workspaceFolder}",
		},
		{
			type = "pwa-node",
			request = "attach",
			name = "Attach",
			processId = require("dap.utils").pick_process,
			cwd = "${workspaceFolder}",
		},
	}
end

--chrome browser
for _, language in ipairs({ "typescriptreact", "javascriptreact" }) do
	require("dap").configurations[language] = {
		{
			type = "pwa-chrome",
			name = "Attach - Remote Debugging",
			request = "attach",
			program = "${file}",
			cwd = vim.fn.getcwd(),
			sourceMaps = true,
			protocol = "inspector",
			port = 9222,
			[[webRoot = "${workspaceFolder}",]],
		},
		{
			type = "pwa-chrome",
			name = "Launch Chrome",
			request = "launch",
			url = "http://localhost:3000",
		},
	}
end

---deno
--[[
-for _, language in ipairs({ "typescript", "javascript" }) do
	require("dap").configurations[language] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			runtimeExecutable = "deno",
			runtimeArgs = {
				"run",
				"--inspect-wait",
				"--allow-all",
			},
			program = "${file}",
			cwd = "${workspaceFolder}",
			attachSimplePort = 9229,
		},
	}
  end
--]]



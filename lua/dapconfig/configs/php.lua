local dap = require("dap")

dap.adapters.php = {
  type = "executable",
  command = "php-debug-adapter",
   args = { '/home/luis/.local/share/nvim/mason/packages/phpDebug.js' },
}

dap.configurations.php = {
  {
    type = "php",
    request = "launch",
    name = "Laravel",
    port = 9003,
    pathMappings = {
      ["/var/www/html"] = "${workspaceFolder}",
    },
  },
  {
    type = "php",
    request = "launch",
    name = "Symfony",
    port = 9003,
    pathMappings = {
      ["/app"] = "${workspaceFolder}",
    },
  },
}

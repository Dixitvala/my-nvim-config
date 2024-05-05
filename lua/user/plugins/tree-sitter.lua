local config = function () 
  local configs = require("nvim-treesitter.configs")

  configs.setup({
    ensure_installed = { "java", "css", "lua", "vim", "javascript" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
  })
  config()
end

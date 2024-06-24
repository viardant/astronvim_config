return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     -- include the default astronvim config that calls the setup call
  --     require "plugins.configs.luasnip"(plugin, opts)
  --     -- load snippets paths
  --     require("luasnip.loaders.from_vscode").lazy_load {
  --       -- this can be used if your configuration lives in ~/.config/nvim
  --       -- if your configuration lives in ~/.config/astronvim, the full path
  --       -- must be specified in the next line
  --       paths = { "./lua/user/snippets" }
  --     }
  --   end,
  -- },
  {
    "github/copilot.vim",
    event = "VeryLazy",
  },
  {
    "xiyaowong/transparent.nvim",
    -- config = function()
    -- require("transparent").setup({
    -- enable = true,
    -- })
    -- end,
    -- Do not lazyLoad this plugin
    lazy = false,
  },
}

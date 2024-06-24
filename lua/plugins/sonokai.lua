return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "sonokai",
    },
  },
  {
    "sainnhe/sonokai",
    init = function() -- init function runs before the plugin is loaded
      vim.g.sonokai_style = "espresso"
      -- vim.g.sonokai_style = "shusia"
    end,
  },
}

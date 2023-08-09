-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- ToggleTerm
    ["<F1>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F2>"] = { function() require("astronvim.utils").toggle_term_cmd(vim.fn.executable "python" == 1 and "python" or vim.fn.executable "python3" == 1 and "python3") end, desc = "ToggleTerm python" },
    ["<F3>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },
    ["<F4>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "ToggleTerm vertical split" },
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- quick close
    ["<C-w>"] = { function() require("astronvim.utils.buffer").close() end, desc = "Close buffer" },
    -- quick buffer swapping
    ["<C-PageUp>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<C-PageDown>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<leader>."] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<leader>,"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    -- ["<C-.>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    -- ["<C-,>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<M-.>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<M-,>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    -- ["<C-[>"] = { function() require("astronvim.utils.buffer").prev() end, desc = "Previous buffer" },
    -- if utils.is_available "smart-splits.nvim" then
    ["<M-Left>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" },
    ["<M-Down>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" },
    ["<M-Up>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" },
    ["<M-Right>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" },
    -- else
      -- ["<C-h>"] = { "<C-w>h", desc = "Move to left split" }
      -- ["<C-j>"] = { "<C-w>j", desc = "Move to below split" }
      -- ["<C-k>"] = { "<C-w>k", desc = "Move to above split" }
      -- ["<C-l>"] = { "<C-w>l", desc = "Move to right split" }
    -- end


  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<F1>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F2>"] = { function() require("astronvim.utils").toggle_term_cmd(vim.fn.executable "python" == 1 and "python" or vim.fn.executable "python3" == 1 and "python3") end, desc = "ToggleTerm python" },
    ["<F3>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F4>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
}

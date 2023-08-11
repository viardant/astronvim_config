-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Run :help map-table for insights about modes
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
    ["<C-PageDown>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<C-PageUp>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<leader>."] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<leader>,"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    -- ["<C-.>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    -- ["<C-,>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<M-.>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<M-,>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<S-PageDown>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<S-PageUp>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<C-S-PageDown>"] = { function() vim.cmd.tabnext() end, desc = "Next tab" },
    ["<C-S-PageUp>"] = { function() vim.cmd.tabprevious() end, desc = "Previous tab" },
    -- ["<C-[>"] = { function() require("astronvim.utils.buffer").prev() end, desc = "Previous buffer" },
    -- if utils.is_available "smart-splits.nvim" then
    ["<S-Left>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" },
    ["<S-Down>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" },
    ["<S-Up>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" },
    ["<S-Right>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" },
    -- else
      -- ["<S-Left>"] = { "<C-w>h", desc = "Move to left split" }
      -- ["<S-Down>"] = { "<C-w>j", desc = "Move to below split" }
      -- ["<S-Up>"] = { "<C-w>k", desc = "Move to above split" }
      -- ["<S-Right>"] = { "<C-w>l", desc = "Move to right split" }
    -- end
    ["<M-]>"] = { "<cmd>call copilot#Next()<CR>", desc = "Fetches next copilot suggestion" },
    ["<M-[>"] = { "<cmd>call copilot#Previous()<CR>", desc = "Fetches previous copilot suggestion" },
    ["<M-p>"] = { "<cmd>Copilot panel<CR>", desc = "Opens the copilot suggestion panel" },
    ["<M-\\>"] = { "<cmd>call copilot#Suggest()<CR>", desc = "Explicitly request a copilot suggestion" },
    ["<M-CR>"] = { 'copilot#Accept("")', desc = "Accept copilot suggestion", script = true, silent = true, nowait = true, expr = true },
    ["<M-DEL>"] = {
      function()
        local is_enabled = vim.g.copilot_enabled or 1
        local command = is_enabled == 1 and "Copilot disable" or "Copilot enable"
        vim.cmd(command)
        is_enabled = vim.g.copilot_enabled or 1
        local notification_message = is_enabled == 1 and "Copilot enabled" or "Copilot disabled"
        vim.notify(notification_message, is_enabled == 1 and vim.log.levels.INFO or vim.log.levels.WARN)
      end,
      desc = "Toggle Copilot",
      -- script = true,
      -- silent = true,
      nowait = true,
      -- expr = true,
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<F1>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F2>"] = { function() require("astronvim.utils").toggle_term_cmd(vim.fn.executable "python" == 1 and "python" or vim.fn.executable "python3" == 1 and "python3") end, desc = "ToggleTerm python" },
    ["<F3>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F4>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
  i = {
    ["<M-p>"] = { "<cmd>Copilot panel<CR>", desc = "Opens the copilot suggestion panel" },
    ["<M-]>"] = { "<cmd>call copilot#Next()<CR>", desc = "Fetches next copilot suggestion" },
    ["<M-.>"] = { "<cmd>call copilot#Next()<CR>", desc = "Fetches next copilot suggestion" },
    ["<M-[>"] = { "<cmd>call copilot#Previous()<CR>", desc = "Fetches previous copilot suggestion" },
    ["<M-,>"] = { "<cmd>call copilot#Previous()<CR>", desc = "Fetches previous copilot suggestion" },
    ["<M-\\>"] = { "<cmd>call copilot#Suggest()<CR>", desc = "Explicitly request a copilot suggestion" },
    ["<M-BS>"] = { "copilot#Dismiss()", desc = "Dismiss the current copilot suggestion", script = true, silent = true, nowait = true, expr = true },
    -- "copilot#Accept()" mapping was moved into init.lua polish function to avoid an unknown bug where unicode characters were being inserted into the buffer
    -- ["<M-CR>"] = { "copilot#Accept()", desc = "Accept copilot suggestion", script = true, silent = true, nowait = true, expr = true, noremap = true },
    -- ["<M-CR>"] = {
      -- function()
        -- local suggestion = vim.fn["copilot#GetDisplayedSuggestion"]()
        -- vim.notify(suggestion.text, vim.log.levels.INFO)
      -- end,
      -- desc = "Display Copilot suggestion",
      -- script = true,
      -- silent = true,
      -- nowait = true,
      -- expr = true,
    -- },
    -- ["<M-a>"] = { 'copilot#Accept("")', desc = "Accept copilot suggestion", script = true, silent = true, nowait = true, expr = true },
    -- ["<M-/>"] = { "copilot#Accept()", desc = "Accept copilot suggestion", script = true, silent = true, nowait = true, expr = true },
  }
}

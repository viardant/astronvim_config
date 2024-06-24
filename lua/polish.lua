-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }
vim.api.nvim_set_keymap("i", "<M-CR>", "copilot#Accept()", { expr = true, silent = true, noremap = true, nowait = true, script = true})
vim.api.nvim_set_keymap("i", "<T-CR>", "copilot#Accept()", { expr = true, silent = true, noremap = true, nowait = true, script = true})
vim.api.nvim_set_keymap("i", "<M-a>", "copilot#Accept()", { expr = true, silent = true, noremap = true, nowait = true, script = true})
vim.api.nvim_set_keymap("i", "<M-k>", "copilot#Accept()", { expr = true, silent = true, noremap = true, nowait = true, script = true})
vim.api.nvim_set_keymap("i", "<M-/>", "copilot#Accept()", { expr = true, silent = true, noremap = true, nowait = true, script = true})

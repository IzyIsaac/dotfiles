-- 4 Space Tabs > all
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Editor settings
vim.opt.wrap = false
vim.opt.relativenumber = true

-- Colors
lvim.colorscheme = "catppuccin-frappe"

-- Keymaps
lvim.keys.normal_mode["<Tab>"] = ":bnext<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":bprev<cr>"

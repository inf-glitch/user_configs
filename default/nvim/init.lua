vim.opt.nu = true
vim.opt.nuw = 5
vim.opt.sw = 4
vim.opt.ts = 4

-- relative numbers --
vim.wo.relativenumber = true

vim.opt.bg = dark
vim.opt.termguicolors = true

vim.opt.expandtab = true

vim.opt.fo:remove{"o"}

vim.opt.clipboard = "unnamedplus"

vim.opt.guicursor = "i-ci-ve:hor25"

vim.cmd("colorscheme torte")

vim.opt.mouse = a

-- auto-closing brackets --
vim.keymap.set('i', '(', '()<Left>', { noremap = true })
vim.keymap.set('i', '{', '{}<Left>', { noremap = true })
vim.keymap.set('i', '[', '[]<Left>', { noremap = true })

-- Remove last search pattern by pressing Enter --
vim.cmd('nnoremap <CR> :noh<CR><CR>')

-- C indentation settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "h", "hpp" }, -- Applies to C and C++ files
  callback = function()
    vim.opt_local.cindent = true         -- Enable the C indentation engine
    vim.opt_local.shiftwidth = 4         -- Set indent level to 4 spaces
    vim.opt_local.tabstop = 4            -- Make a tab character equal to 4 spaces
    vim.opt_local.softtabstop = 4        -- Make editing (Tab/Backspace) behave like 4 spaces
    vim.opt_local.expandtab = true        -- Use spaces, not actual tab characters

    -- The 'cinoptions' setting is where you get fine-grained control.
    -- This example mirrors a common style. Adjust the numbers to your liking.
    -- :h cinoptions-values for details
    vim.opt_local.cinoptions = ':0,l1,g0,(0,W4,m1'
  end,
})

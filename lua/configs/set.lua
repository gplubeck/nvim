-- set fat cursor
vim.opt.guicursor = ""
--line numbers
vim.opt.number = true

--tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

--no swap files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

--show partial command in status line?
vim.opt.showcmd = false 

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
--incremental highligh with search
vim.opt.incsearch = true

vim.opt.termguicolors = true

--split right and down
vim.opt.splitright = true
vim.opt.splitbelow = true

--search stuff
vim.opt.ignorecase = true
vim.opt.smartcase = true


vim.opt.laststatus = 2

-- sync OS and unnamed register
vim.opt.clipboard = 'unnamedplus'

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50



-- Sets how neovim will display certain whitespace in the editor.
--  See :help 'list'
--  and :help 'listchars'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }


-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true


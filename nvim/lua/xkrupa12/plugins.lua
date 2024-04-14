-- Bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lua

require("lazy").setup({

  { 'marko-cerovac/material.nvim' },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  
  {
    "gbprod/phpactor.nvim",
    -- run = require("phpactor.handler.update"), -- To install/update phpactor when installing this plugin
    requires = {
      "nvim-lua/plenary.nvim", -- required to update phpactor
      "neovim/nvim-lspconfig" -- required to automaticly register lsp serveur
    },
    config = function()
      require("phpactor").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }) end
  },

  -- Commenting support.
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
  },

  -- Add, change, and delete surrounding text.
  { 'tpope/vim-surround' },

  -- Useful commands like :Rename and :SudoWrite.
  { 'tpope/vim-eunuch' },

  -- Pairs of handy bracket mappings, like [b and ]b.
  { 'tpope/vim-unimpaired', event = 'VeryLazy' },

  -- Indent autodetection with editorconfig support.
  { 'tpope/vim-sleuth' },

  -- Allow plugins to enable repeating of commands.
  { 'tpope/vim-repeat' },

  -- Navigate seamlessly between Vim windows and Tmux panes.
  { 'christoomey/vim-tmux-navigator' },

  -- Jump to the last location when opening a file.
  { 'farmergreg/vim-lastplace' },

  -- Enable * searching with visually selected text.
  { 'nelstrom/vim-visual-star-search' },

  -- Automatically create parent dirs when saving.
  { 'jessarcher/vim-heritage' },

  -- Text objects for HTML attributes.
  -- { 'whatyouhide/vim-textobj-xmlattr', dependencies = 'kana/vim-textobj-xkrupa12'  },

  -- Automatically set the working directory to the project root.
  -- { import = 'xkrupa12.plugins.vim-rooter' },

  -- Automatically add closing brackets, quotes, etc.
  { 'windwp/nvim-autopairs', config = true },

  -- Add smooth scrolling to avoid jarring jumps
  { 'karb94/neoscroll.nvim', config = true },

  -- All closing buffers without closing the split window.
  -- { import = 'xkrupa12.plugins.bufdelete' },

  -- Split arrays and methods onto multiple lines, or join them back up.
  {
    'Wansmer/treesj',
    keys = { '<space>m', '<space>j', '<space>s' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup({--[[ your config ]]})
    end,
  },

  -- Automatically fix indentation when pasting code.
  -- { import = 'xkrupa12.plugins.vim-pasta' },

  { import = 'xkrupa12.plugins.telescope' },

  -- File tree sidebar
  { import = 'xkrupa12.plugins.neo-tree' },

  -- A Status line.
  { import = 'xkrupa12.plugins.lualine' },
  
  -- Display buffers as tabs.
  { import = 'xkrupa12.plugins.bufferline' },

  { import = 'xkrupa12.plugins.indent-blankline' },

  -- Add a dashboard
  { import = 'xkrupa12.plugins.dashboard-nvim' },

  -- Git integration.
  { import = 'xkrupa12.plugins.gitsigns' },

  -- Git commands.
  { 'tpope/vim-fugitive', dependencies = 'tpope/vim-rhubarb' },

  --- Floating terminal.
  { import = 'xkrupa12.plugins.floaterm' },

  -- Improved syntax highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  { "williamboman/mason.nvim" },

  -- Project Configuration.
  { import = 'xkrupa12.plugins.projectionist' },

  -- Testing helper
  { import = 'xkrupa12.plugins.vim-test' },

  -- Colorize Hex Codes
  { import = 'xkrupa12.plugins.colorizer' },

  -- Show file and LSP context in a bar at the top of the screen.
  { import = 'xkrupa12.plugins.barbecue' },

  -- Virtual scrollbar
  { import = 'xkrupa12.plugins.nvim-scrollbar' },

  -- Highlight occurrences of the word under the cursor.
  { import = 'xkrupa12.plugins.illuminate' },
  --
  -- Language Server Protocol.
  { import = 'xkrupa12.plugins.lspconfig' },

  -- Completion
  { import = 'xkrupa12.plugins.cmp' },

  -- PHP Refactoring Tools
  { import = 'xkrupa12.plugins.phpactor' },
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
  install = {
    colorscheme = { "tokyonight", "habamax" },
  },
})

require("mason").setup()

vim.cmd 'colorscheme material'
vim.g.material_style = "deep ocean"

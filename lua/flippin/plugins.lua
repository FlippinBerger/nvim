require("lazy").setup({
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
    { "rose-pine/neovim",                 name = "rose-pine" },
    { "tpope/vim-fugitive" },
    { "tpope/vim-commentary" },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
    },
    -- better quickfix window
    -- {'kevinhwang91/nvim-bqf'}
    -- smooth scrolling
    -- { 'karb94/neoscroll.nvim' },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'mawkler/modicator.nvim',
        dependencies = 'mawkler/onedark.nvim', -- Add your colorscheme plugin here
        init = function()
            -- These are required for Modicator to work
            vim.o.cursorline = true
            vim.o.number = true
            vim.o.termguicolors = true
        end,
        opts = {
            -- Warn if any required option above is missing. May emit false positives
            -- if some other plugin modifies them, which in that case you can just
            -- ignore. Feel free to remove this line after you've gotten Modicator to
            -- work properly.
            show_warnings = true,
        }
    }
})

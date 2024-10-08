require("lazy").setup({
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    -- todo highlighting
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
    { "nvim-tree/nvim-tree.lua",          dependencies = { "nvim-tree/nvim-web-devicons" } },
    { "rose-pine/neovim",                 name = "rose-pine" },
    -- git
    { "tpope/vim-fugitive" },
    -- lsp stuff
    {
        'stevearc/conform.nvim',
        opts = {},
    },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    -- surround stuff. quotes/brackets/braces
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
    },
    -- better quickfix window
    -- {'kevinhwang91/nvim-bqf'}
    -- status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    -- some color stuff
    {
        'mawkler/modicator.nvim',
        dependencies = 'rose-pine/neovim', -- Add your colorscheme plugin here
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
    },
    -- file explorer/edit buffer
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    { 'echasnovski/mini.nvim', version = false },
    -- join or split long lines on semantic points set by treesitter
    { 'wansmer/treesj' },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    }
})

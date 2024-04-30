return {    
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},	
    "nvim-orgmode/orgmode",
    {"nvim-telescope/telescope.nvim", tag = "0.1.3"},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "numToStr/Comment.nvim",
    "mfussenegger/nvim-dap",
    "mxsdev/nvim-dap-vscode-js",
    --{"microsoft/vscode-js-debug", build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"},
}
return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { 
                "c", "lua", "vim", "vimdoc", "query", "org", "javascript", "html", "php", 
                "hlsl", "json", "http", "css", "scss", "typescript", "vala", "xml", "vue",
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,

            highlight = {
                enable = true,

                -- Required for spellcheck, some LaTex highlights and
                -- code block highlights that do not have ts grammar
                additional_vim_regex_highlighting = {"org"},
            },
            indent = {
                enable = true,
            },
        })
    end
}


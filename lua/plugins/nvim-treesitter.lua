return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        -- blade syntaxe highlight
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        parser_config.blade = {
            install_info = {
                url = "https://github.com/EmranMR/tree-sitter-blade",
                files = {"src/parser.c"},
                branch = "main",
            },
            filetype = "blade"
        }

        configs.setup({
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "php",
                "hlsl", "glsl", "json", "http", "css", "scss", "typescript", "vala", "xml", "vue",
                "blade", "twig",
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,

            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        })

        -- Configuration Vimscript pour définir le type de fichier Blade pour les fichiers *.blade.php
        vim.cmd [[
            augroup BladeFiletypeRelated
            autocmd!
            autocmd BufNewFile,BufRead *.blade.php set ft=blade
            augroup END
            ]]
    end
}


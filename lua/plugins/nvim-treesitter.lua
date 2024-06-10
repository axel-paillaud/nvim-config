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

        parser_config.smarty = {
            install_info = {
                -- url = "https://github.com/Kibadda/tree-sitter-smarty",
                url = "https://github.com/tree-sitter/tree-sitter-html",
                files = { "src/parser.c" },
                branch = "main",
            },
        }

        configs.setup({
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "query", "org", "javascript", "html", "php",
                "hlsl", "json", "http", "css", "scss", "typescript", "vala", "xml", "vue",
                "blade", "smarty",
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

        -- Configuration Vimscript pour définir le type de fichier Blade pour les fichiers *.blade.php
        vim.cmd [[
            augroup BladeFiletypeRelated
            autocmd!
            autocmd BufNewFile,BufRead *.blade.php set ft=blade
            augroup END
            ]]
    end
}


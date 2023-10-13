require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'org', 'javascript', 'vim', 'vimdoc', 'html', 'php', 'vue', 'c', 'lua',
        'hlsl', 'json', 'latex', 'http', 'css', 'scss', 'typescript', 'vala',
        'xml',
    },
  highlight = {
    enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    additional_vim_regex_highlighting = {'org'},
  },
  indent = {
    enable = true,
  },
}


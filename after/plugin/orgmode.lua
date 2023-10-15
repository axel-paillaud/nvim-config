-- Org-mode
-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

require('orgmode').setup({
  org_agenda_files = {'~/Sync/org/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/Sync/org/refile.org',
})


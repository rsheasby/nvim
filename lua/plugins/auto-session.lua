return {
    'rmagatti/auto-session',
    lazy = false,
  
    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      root_dir = "~/.config/nvim/sessions/",
      auto_restore_last_session = true,
      -- log_level = 'debug',
    }
}
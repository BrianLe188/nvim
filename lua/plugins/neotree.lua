return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
       visible = true,
       show_hidden_count = true,
       hide_dotfiles = false,
       hide_gitignored = true,
       hide_by_name = {
         -- '.git',
         -- '.DS_Store',
         -- 'thumbs.db',
       },
      never_show = {},
        },
      },
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added     = "✚", -- NOTE: you can set any of these to an empty string to not show them
            deleted   = "✖",
            modified  = "",
            renamed   = "",
            -- Status type
            untracked = "",
            ignored   = "",
            unstaged  = "",
            staged    = "",
            conflict  = "",
          },
          align = "right",
        },
      },
    }
  }
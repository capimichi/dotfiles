return {
  -- Snacks (default explorer and picker in modern LazyVim)
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
          },
          files = {
            hidden = true,
          },
        },
      },
    },
  },

  -- Neo-tree (in case neo-tree is enabled or switched to)
  {
    "nvim-neo-tree/neo-tree.nvim",
    optional = true,
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
        },
      },
    },
  },

  -- Telescope (in case telescope picker is enabled)
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = {
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    },
  },
}

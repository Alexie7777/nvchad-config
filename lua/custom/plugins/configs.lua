local M = {}

M.treesitter = {
  ensure_installed = { "lua", "vue" },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },

  highlight = {
    additional_vim_regex_highlighting = false,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = true,
  },

  matchup = {
    enable = true,
  },

  context_commentstring = {
    enable = true,
  },
}

M.nvimtree = {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  git = {
    enable = true,
    ignore = true,
  },
  renderer = {
    highlight_git = true,

    indent_markers = {
      enable = true,
    },

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
}

M.ui = {
  statusline = {
    separator_style = "arrow",
  },
  tabufline = {
    enabled = true,
    lazyload = false,
    overriden_modules = nil,
  },
}

-- M.ui = {
--   statusline = {
--     separator_style = "arrow",
--   },
--   tabufline = {
--     enabled = true,
--     lazyload = false,
--     overriden_modules = nil,
--   },
-- },
--

-- M.bufferline = {
--    options = {
--       numbers = function(opts)
--          return string.format("%s|%s", opts.id, opts.raise(opts.ordinal))
--       end,
--    },
--    mapping = {
--       n = {
--          ["<S-b>"] = "",
--       },
--    },
-- }

return M

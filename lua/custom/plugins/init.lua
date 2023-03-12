return {

  ["ggandor/lightspeed.nvim"] = {
    config = function()
      require "custom.plugins.configs.lightspeed"
    end,
  },

  ["romainl/vim-cool"] = {},

  ["tpope/vim-surround"] = {},

  ["p00f/nvim-ts-rainbow"] = {
    after = "nvim-treesitter",
  },

  ["JoosepAlviste/nvim-ts-context-commentstring"] = {
    after = "nvim-treesitter",
  },

  ["jose-elias-alvarez/nvim-lsp-ts-utils"] = {
    disable = true,
    after = "nvim-lspconfig",
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.configs.null-ls").setup()
    end,
  },

  ["nvim-treesitter/nvim-treesitter-context"] = {
    after = "nvim-treesitter",
    config = function()
      require "custom.plugins.configs.nvim-treesitter-context"
    end,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  ["michaelb/sniprun"] = {
    run = "bash install.sh",
    cmd = "SnipRun",
  },

  ["iamcco/markdown-preview.nvim"] = {
    run = "cd app && yarn install",
    cmd = "MarkdownPreview",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    commit = "e5bfe9b",
  },

  ["sunjon/shade.nvim"] = {
    disable = true,
    config = function()
      require "custom.plugins.configs.shade"
    end,
  },

  ["SmiteshP/nvim-gps"] = {
    disable = true,
    after = "nvim-treesitter",
    config = function()
      require "custom.plugins.configs.nvim-gps"
    end,
  },

  ["kdheepak/lazygit.nvim"] = {
    cmd = "LazyGit",
  },

  ["windwp/nvim-spectre"] = {
    disable = true,
    -- config = function()
    --   require "custom.plugins.configs.spectre"
    -- end,
  },

  ["folke/trouble.nvim"] = {
    config = function()
      require "custom.plugins.configs.trouble"
    end,
  },

  ["folke/todo-comments.nvim"] = {
    config = function()
      require "custom.plugins.configs.todo-comments"
    end,
  },

  ["folke/which-key.nvim"] = {
    disable = false,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["andymass/vim-matchup"] = {},

  ["jose-elias-alvarez/typescript.nvim"] = {},

  ["terryma/vim-multiple-cursors"] = {},

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {

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
    },
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = {
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
    },
  },
  ["NvChad/ui"] = {
    override_options = {
      {
        statusline = {
          separator_style = "arrow",
        },
        tabufline = {
          enabled = true,
          lazyload = false,
          overriden_modules = nil,
        },
      },
    },
  },

  ["nathom/filetype.nvim"] = {
    config = function()
      require "custom.plugins.configs.filetype"
    end,
  },
}

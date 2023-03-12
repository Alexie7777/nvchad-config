local M = {}

M.disabled = {
  n = {
    ["<S-b>"] = "",
  },
}

M.spectre = {
  n = {
    ["<leader>S"] = {
      function()
        require("spectre").open_file_search()
      end,
      "  open spectre",
    },
  },
}

M.lspconfig = {
  i = {
    ["<C-l>"] = {
      function()
        vim.lsp.buf.completion()
      end,
      "   lsp completion ",
    },
  },
}

M.trouble = {
  n = {
    ["<leader>q"] = {
      "<cmd> TroubleToggle<CR>",
      "TroubleToggle",
    },
  },
}

M.lazygit = {
  n = {
    ["<leader>gg"] = {
      "<cmd> LazyGit<CR>",
      "  lazygit",
    },
  },
}

-- M.telescope = {
--    n = {
--       ["<leader>gt"] = {},
--    },
-- }

return M

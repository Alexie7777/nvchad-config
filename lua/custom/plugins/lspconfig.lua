local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "jedi_language_server",
  "bashls",
  "jsonls",
  "tailwindcss",
  "cssmodules_ls",
  "yamlls",
  "eslint",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- volar config start
local util = require "lspconfig.util"
local function get_typescript_server_path(root_dir)
  local global_ts = "/opt/homebrew/lib/node_modules/typescript/lib/tsserverlibrary.js"
  -- Alternative location if installed as root:
  -- local global_ts = '/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js'
  local found_ts = ""
  local function check_dir(path)
    found_ts = util.path.join(path, "node_modules", "typescript", "lib", "tsserverlibrary.js")
    if util.path.exists(found_ts) then
      return path
    end
  end
  if util.search_ancestors(root_dir, check_dir) then
    return found_ts
  else
    return global_ts
  end
end

lspconfig.volar.setup {
  on_new_config = function(new_config, new_root_dir)
    new_config.init_options.typescript.serverPath = get_typescript_server_path(new_root_dir)
  end,
  capabilities = capabilities,
  on_attach = on_attach,
  -- filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },

  init_options = {
    documentFeatures = {
      documentColor = true,
    },
    -- typescript = {
    --    serverPath = "/opt/homebrew/lib/node_modules/typescript/lib/tsserverlibrary.js",
    -- },
    -- hover = false,
  },
}
-- volar config end

lspconfig.emmet_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "html", "css", "vue", "typescriptreact", "javascriptreact" },
}

lspconfig.cssls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "css", "html", "scss", "less", "vue" },
}

-- lspconfig.tsserver.setup {
--   on_attach = function(client, bufnr)
--     on_attach(client, bufnr)
--   end,
--   capabilities = capabilities,
-- }

require("typescript").setup {
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  },
}

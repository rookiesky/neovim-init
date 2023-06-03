require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "pyright",
    }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require'lspconfig'.pyright.setup{
    capabilities = capabilities,
}
require'lspconfig'.cssls.setup{}
require'lspconfig'.emmet_ls.setup{}

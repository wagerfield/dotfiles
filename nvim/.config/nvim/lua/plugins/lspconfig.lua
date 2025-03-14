return {
  -- https://github.com/neovim/nvim-lspconfig#readme
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        settings = {
          typescript = {
            inlayHints = {
              enumMemberValues = { enabled = false },
              functionLikeReturnTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              parameterNames = { enabled = false },
              parameterTypes = { enabled = false },
              variableTypes = { enabled = false },
            },
          },
        },
      },
    },
  },
}

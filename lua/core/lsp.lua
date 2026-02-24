local lsp = require('lspconfig')
local cmp = require('cmp')

-- Настройка автодополнения
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm { select = true },
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
  },
})
-- === C / C++ === 
lsp.clangd.setup({
    capabilities = capabilities,
})
-- == Python ===
lsp.pyright.setup({
    capabilities = capadilities,
})

lsp.asm_lsp.setup({
capabilities = capabilities,
})
-- Настройка LSP для Python (pyright)


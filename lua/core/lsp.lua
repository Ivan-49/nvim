
local cmp = require('cmp')

-- Возможности LSP для nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Настройка автодополнения
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),


    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
    },
})

-- C / C++
vim.lsp.config('clangd', {
    capabilities = capabilities,
})

-- Python
vim.lsp.config('pyright', {
    capabilities = capabilities,
})

-- Assembly
vim.lsp.config('asm_lsp', {
    capabilities = capabilities,
})

-- Запуск языковых серверов
vim.lsp.enable('clangd')
vim.lsp.enable('pyright')
vim.lsp.enable('asm_lsp')


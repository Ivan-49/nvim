
local fn = vim.fn

-- Проверяем, установлен ли Packer
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'


if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path
    })

    vim.cmd('packadd packer.nvim')
end

return require('packer').startup(function(use)

    -- Менеджер плагинов
    use 'wbthomason/packer.nvim'


    -- LSP
    use 'neovim/nvim-lspconfig'

    -- Автодополнение

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'

    use 'hrsh7th/cmp-buffer'

    -- Сниппеты
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Дополнительный функционал LSP
    use 'nvimtools/none-ls.nvim'

    -- Цветовая схема
    use {
        'Mofiqul/dracula.nvim',
    }

end)


-- leader
vim.g.mapleader = ','

-- line numbers
vim.opt.number = true

-- mouse
vim.opt.mouse = 'a'

-- updatetime
vim.opt.updatetime = 1000

-- search options
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- filchars
vim.opt.fillchars = {
    eob = ' ',
    vert = ' ',
}

-- keybindings
vim.api.nvim_set_keymap('n',
    -- some minimap shenanigans as a workaround for buggy behavior on NvimTreeToggle
    '<Leader>e', ':NvimTreeToggle<CR>:MinimapClose<CR>:Minimap<CR>:MinimapRefresh<CR>',
    {
        silent = true
    }
)

-- minimap
vim.g.minimap_auto_start = 1
vim.g.minimap_width = 10
vim.g.minimap_block_filetypes = { 'fugitive', 'nerdtree', 'tagbar', 'fzf', 'NvimTree' }

-- suggestions height
vim.opt.pumheight = 10

-- packer plugins
require('plugins')

-- nvim-tree
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 36,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

-- lualine
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'powerline',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            'packer',
            'NvimTree',
            'minimap',
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
}

-- lspconfig
require('lspconfig').clangd.setup{
    cmd = { "clangd", "--background-index", "--clang-tidy" },
    filetypes = { "c", "cpp" },
}


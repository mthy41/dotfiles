return {
    'akinsho/bufferline.nvim',
    version = '*',
    dependecies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require('bufferline').setup({})
    end,
}

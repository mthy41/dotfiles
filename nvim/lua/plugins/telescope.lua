return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    opts = {
          defaults = {
            layout_strategy = "horizontal",
            layout_config = {
              horizontal = {
                prompt_position = "top",
                width = { padding = 0 },
                height = { padding = 0 },
                preview_width = 0.5,
              },
            },
            sorting_strategy = "ascending",
          },
        },
    dependencies = { 
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            cond = function()
                return vim.fn.executable 'make' == 1
            end
        },
        {'nvim-telescope/telescope-ui-select.nvim'},
        {'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font},
    },
    config = function()
        local vks = vim.keymap.set
        require('telescope').setup({
            extensions = {
                ['ui-select'] = {
                    require('telescope.themes').get_dropdown(),
                },
            },
        })

        --load extensions
        pcall(require('telescope').load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')
        local builtin = require 'telescope.builtin'

        -- bindings
        vks('n', '<leader>sf', builtin.find_files, {desc = 'search files'})
        vks('n', '<leader>fz', builtin.current_buffer_fuzzy_find, {desc = 'search fuzzily inside current buffer'})
        vks('n', '<leader>lg', builtin.live_grep, {desc = 'live grep'})
    end

}

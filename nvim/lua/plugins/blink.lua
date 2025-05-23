-- https://cmp.saghen.dev/configuration/general.html
return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  -- use a release tag to download pre-built binaries
  version = '*',
  -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  build = 'cargo build --release',
  -- If you use nix, you can build from source using latest nightly rust with:
  -- build = 'nix run .#build-plugin',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    -- 'default' for mappings similar to built-in completion
    -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
    -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
    -- See the full "keymap" documentation for information on defining your own keymap.
    keymap = {
        preset = 'enter',
        ['<Tab>'] = {'select_next', 'fallback'},
        completion = {
            documentation = {
                window = { border = vim.g.borderStyle },
                auto_show = true,
                auto_show_delay_ms = 500,
            },
            ghost_text = {enabled = true},
        },
    },
    cmdline = {
        keymap = {
            preset = 'super-tab',
        },
        completion = {
            menu = { auto_show = true },
        }
    },



    appearance = {
      -- Sets the fallback highlight groups to nvim-cmp's highlight groups
      -- Useful for when your theme doesn't support blink.cmp
      -- Will be removed in a future release
      use_nvim_cmp_as_default = true,
      -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    signature = { enabled = true },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
  },
  opts_extend = { "sources.default" }
}

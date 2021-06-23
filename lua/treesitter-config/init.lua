require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = {"haskell"},
    highlight = {enable = true},
    indent = {enable = {"javascriptreact"}},
    autotag = {enable = true},
    rainbow = {enable = true}
}

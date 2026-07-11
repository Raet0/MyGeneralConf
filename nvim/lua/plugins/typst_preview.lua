
return {
    'chomosuke/typst-preview.nvim',
    enabled = false,
    lazy = false, -- or ft = 'typst'
    keys = {
        { "<leader>lp", "<cmd>TypstPreview<cr>", desc = "Show document in web"},
    },
    version = '1.*',
    opts = {
        dependencies_bin = {
            ['tinymist'] = 'tinymist', 
        },
    }, -- lazy.nvim will implicitly calls `setup {}`
}

return {
    "saghen/blink.cmp",
    version = "*",
    -- 🚀 EL NUEVO MOTOR DE DESCARGA PARA LA V2
    build = function() require('blink.cmp').build():pwait() end,
    dependencies = { 
        "saghen/blink.lib", 
        "L3MON4D3/LuaSnip", 
        "rafamadriz/friendly-snippets" 
    },
    opts = {
        snippets = { preset = 'luasnip' },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        completion = {
            list = { 
                selection = { preselect = true, auto_insert = false } 
            },
        },
        keymap = {
            preset = "none",
            ["<C-Space>"] = { "show", "fallback" },
            ["<CR>"] = { "accept", "fallback" },
            ["<Tab>"] = { "select_next", "fallback" },
            ["<S-Tab>"] = { "select_prev", "fallback" },
        },
    },
}

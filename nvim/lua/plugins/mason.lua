return {
    {
        "williamboman/mason.nvim",
        opts = {
            ui = { border = "rounded" },
        },
        install_package_manager = "pnpm",
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        opts = {
            ensure_installed = {
                "tinymist",  -- motor para el lenguage de texto typst
                "lua_ls",    -- Lua
                "pyright",   -- Python
                "ts_ls",     -- JS/TS
                "html",      -- HTML
                "cssls",     -- CSS
                "bashls",    -- Bash
                "jdtls",     -- Java (Servidor básico)
                "texlab",   -- latex
                "astro",
                "marksman"
            },
        },
    },
}

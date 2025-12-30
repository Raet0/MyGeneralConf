return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local on_attach = function(_, bufnr)
                local map = function(mode, lhs, rhs)
                    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
                end

                map("n", "gd", vim.lsp.buf.definition)
                map("n", "gr", vim.lsp.buf.references)
                map("n", "K", vim.lsp.buf.hover)
                map("n", "<leader>rn", vim.lsp.buf.rename)
                map("n", "<leader>ca", vim.lsp.buf.code_action)

                map("n", "[d", vim.diagnostic.goto_prev)
                map("n", "]d", vim.diagnostic.goto_next)
            end

            vim.o.updatetime = 250

            vim.diagnostic.config({
                virtual_lines = false,
                virtual_text = {
                    current_line = true
                },
                underline = false,
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = "",
                        [vim.diagnostic.severity.WARN]  = "",
                        [vim.diagnostic.severity.INFO]  = "",
                        [vim.diagnostic.severity.HINT]  = "󰌵",
                    },
                },
            })

            vim.api.nvim_create_autocmd("CursorHold", {
                callback = function()
                    vim.diagnostic.open_float(nil, {
                        focusable = false,
                        border = "rounded",
                        source = "always",
                    })
                end,
            })

            -- Configs por servidor (LSP nativo)
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                    },
                },
            })
            vim.lsp.enable("lua_ls")

            vim.lsp.config("pyright", {
                capabilities = capabilities,
                on_attach = on_attach,
            })
            vim.lsp.enable("pyright")

            -- JavaScript / TypeScript
            vim.lsp.config("ts_ls", {
                capabilities = capabilities,
                on_attach = on_attach,
            })
            vim.lsp.enable("ts_ls")

            -- HTML
            vim.lsp.config("html", {
                capabilities = capabilities,
                on_attach = on_attach,
            })
            vim.lsp.enable("html")

            -- CSS / SCSS / LESS
            vim.lsp.config("cssls", {
                capabilities = capabilities,
                on_attach = on_attach,
            })
            vim.lsp.enable("cssls")

            -- Angular
            vim.lsp.config("angularls", {
                capabilities = capabilities,
                on_attach = on_attach,
            })
            vim.lsp.enable("angularls")

        end,
    },
}


return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = {
        -- File Explorer
        { "<C-e>", function () Snacks.explorer() end, desc = "Toggle File Explorer" },
        -- Integrated Terminal
        { 
            "<c-t>", 
            function() Snacks.terminal.toggle(nil, { win = { position = "bottom", height = 10 } }) end, 
            desc = "Toggle Terminal", 
            mode = { "n", "t" } 
        },
        -- File Navigation & Search (mimicking Telescope)
        { "<leader>ff", function() Snacks.picker.files() end, desc = "find files" },
        { "<leader>fg", function() Snacks.picker.grep() end, desc = "live grep" },
        { "<leader>fb", function() Snacks.picker.buffers() end, desc = "buffers" },
        { "<leader>fo", function() Snacks.picker.recent() end, desc = "recent files" },
        { "<leader>fh", function() Snacks.picker.help() end, desc = "help pages" },
        { "<leader>fs", function() Snacks.picker.lsp_symbols() end, desc = "document symbols" },
    },
    opts = {
        notifier = { enabled = true },
        animate = { enabled = false },
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        explorer = { enabled = true },
        image = { enabled = true },
        quickfile = { enabled = true },
        statuscolumn = { enabled = true },
        terminal = { enabled = true },
        words = { enabled = true },
        picker = {
            enabled = true,
            layout = {
                preset = "telescope", 
            },
            win = {
                input = {
                    keys = {
                        ["q"] = { "close", mode = "n" },
                    },
                },
            },
            sources = {
                explorer = {
                    layout = {
                        preset = "sidebar",
                        layout = { position = "right", width = 30 },
                    },
                },
            },
        },
    },
    init = function()
        -- Terminal configuration and keymaps
        vim.api.nvim_create_autocmd("TermOpen", {
            pattern = "*",
            callback = function()
                local opts = { buffer = 0 }
                vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
                vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
                vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
                vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
                vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
                vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
            end,
        })
    end,
}


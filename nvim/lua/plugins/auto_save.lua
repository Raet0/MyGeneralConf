return {
    "Pocco81/auto-save.nvim",
    enabled = true,
    lazy = false,
    keys = {
        { "<C-s>", "<cmd>w<CR>", mode = { "n", "i", "v" }, desc = "Guardado manual" },
        { "<leader>au", "<cmd>ASToggle<CR>", mode = { "n", "i", "v" }, desc = "Activar/Desactivar Auto-guardado" },
    },
    opts = {
        enabled = true,
        events = { "InsertLeave" , "TextChanged" },
        debounce_delay = 1000, 
        -- disable messages 
        execution_message = {
            message = function()
                return "" 
            end,
        },
    },
}

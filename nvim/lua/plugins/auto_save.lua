return {
    "Pocco81/auto-save.nvim",
    lazy = false,
    init = function() 
        require("auto-save").setup({
            enabled = true,
        })
    end,
} 

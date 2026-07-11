return {
    "lervag/vimtex",
    enabled = false,
    lazy = true, -- VimTeX necesita arrancar inmediatamente con los archivos .tex
    init = function()
        -- Configurar Zathura como el visor predeterminado
        vim.g.vimtex_view_method = "zathura"
        -- Usar latexmk para la compilación continua
        vim.g.vimtex_compiler_method = "latexmk"
    end,
}

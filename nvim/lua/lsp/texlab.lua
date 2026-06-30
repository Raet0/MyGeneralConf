local lspconfig = require('lspconfig')

lspconfig.texlab.setup({
    settings = {
        texlab = {
            chktex = {
                onOpenAndSave = true,
                onEdit = false,
            },
            -- Configuración interna de TexLab
            bibtexFormatter = 'texlab', 
        }
    }
})

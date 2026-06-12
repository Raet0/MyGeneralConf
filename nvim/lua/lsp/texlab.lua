local lspconfig = require('lspconfig')

lspconfig.texlab.setup({
  settings = {
    texlab = {
      build = {
        executable = 'latexmk',
        args = { '-pdf', '-interaction=nonstopmode', '-synctex=1', '%f' },
        onSave = false, -- Dejamos que VimTeX se encargue de compilar al guardar
        forwardSearchAfter = false,
      },
      chktex = {
        onOpenAndSave = true,
        onEdit = false,
      },
      -- Configuración interna de TexLab
      bibtexFormatter = 'texlab', 
    }
  }
})

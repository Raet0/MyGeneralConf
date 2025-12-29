local opt = vim.opt

-- --- PORTAPAPELES Y SISTEMA ---
opt.clipboard = "unnamedplus"   -- Permite copiar/pegar entre Neovim y otras apps (Chrome, Discord, etc.)
opt.mouse = "a"                 -- Uso del mouse habilitado
opt.completeopt = { "menu", "menuone", "noselect" } -- Vital para que nvim-cmp no sea molesto

-- --- NÚMEROS Y LÍNEAS ---
opt.number = true               -- Número de línea actual
opt.relativenumber = true       -- Números relativos para saltos rápidos
opt.cursorline = true           -- Resalta la línea actual
opt.scrolloff = 8               -- Margen de 8 líneas al hacer scroll (no deja el cursor al borde)

-- --- TABULACIÓN Y ESPACIADO (Estilo Python/Web) ---
opt.tabstop = 4                 -- Ancho visual de un tab
opt.softtabstop = 4             -- Espacios insertados al editar
opt.shiftwidth = 4              -- Espacios para indentación
opt.expandtab = true            -- Convertir tabs en espacios
opt.smartindent = true          -- Indentación inteligente
opt.wrap = false                -- Líneas largas no saltan visualmente

-- --- BÚSQUEDA ---
opt.incsearch = true            -- Busca mientras escribes
opt.hlsearch = false            -- No deja resaltado lo último que buscaste
opt.ignorecase = true           -- Ignora mayúsculas al buscar...
opt.smartcase = true            -- ...a menos que escribas una mayúscula

-- --- INTERFAZ Y VENTANAS ---
opt.termguicolors = true        -- Colores reales (imprescindible para tu colorscheme)
opt.splitbelow = true           -- Nuevas ventanas horizontales abajo
opt.splitright = true           -- Nuevas ventanas verticales a la derecha
opt.showmode = false            -- Oculta el "-- INSERT --" porque Lualine ya lo muestra

return {
  "nvim-telescope/telescope.nvim",
  tag = "v0.2.0",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        prompt_prefix = "   ",
        selection_caret = "❯ ",
        path_display = { "smart" },
        mappings = {
          i = {
            ["<Esc>"] = actions.close,
          },
        },
      },
    })

    local builtin = require("telescope.builtin")

    -- Búsqueda de archivos
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Buscar archivos" })

    -- Buscar texto en el proyecto
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Buscar texto (grep)" })

    -- Buffers abiertos
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers abiertos" })

    -- Archivos recientes
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Archivos recientes" })
  end,
}


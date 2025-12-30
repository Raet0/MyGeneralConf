local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        -- estetico

        { import = "plugins.nvim-tree" },
        { import = "plugins.colorscheme" },
        { import = "plugins.barbar" },
        { import = "plugins.lualine" },
        { import = "plugins.telescope" },
        { import = "plugins.toggleterm" },
        -- funcionalidad

        { import = "plugins.nvim-treesitter" },
        { import = "plugins.gitsigns" },
        { import = "plugins.blink_cmp" },
--        { import = "plugins.nvim-cmp" },

        -- lenguajes, LSP y autocompletado
        -- {import = "plugins.lsp" },
        { import = "plugins.mason" },
    },
})

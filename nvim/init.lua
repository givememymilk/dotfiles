vim.cmd([[ colo lunaperche ]])

local opt = vim.opt
opt.number = true

-- disable auto-indent 
-- (also called smart indent)
opt.autoindent = false
opt.smartindent = false
opt.smarttab = false
opt.indentexpr = nil


opt.softtabstop = 4
opt.shiftwidth = 4


--[[
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "asciidoc" },
  callback = function()
    vim.opt_local.textwidth = 80
  end,
})
]]--


require('nvim-web-devicons').setup
{
    variant = 'dark'
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

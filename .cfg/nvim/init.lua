vim.opt.termguicolors = false

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local groups = { "Normal", "NonText", "SignColumn", "LineNr", "EndOfBuffer" }
    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
    end
  end,
})

vim.cmd("colo lunaperche") 

local o = vim.opt

o.number = true
o.tabstop = 4

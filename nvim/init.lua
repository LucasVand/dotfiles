require("lucas.core")
require("lucas.lazy")

-- disable copilot
vim.cmd("Copilot disable")

vim.filetype.add({
  extension = {
    myext = "luc8",
  },
  pattern = {
    [".*%.asm"] = "luc8",
  },
})

vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.opt.guicursor = "a:ver25"
  end,
})

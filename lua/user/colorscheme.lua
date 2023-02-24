local colorscheme = "no-clown-fiesta"

require(colorscheme).setup({
  transparent = false, -- Enable this to disable the bg color
  styles = { 
    -- You can set any of the style values specified for `:h nvim_set_hl`
    comments =  {},
    keywords = {},
    functions = {},
    variables = {},
    type = { bold = true },
    lsp = { underline = true }
  },
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

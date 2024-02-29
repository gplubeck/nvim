--function to use rose-pine colorscheme
function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

end

ColorMyPencils()

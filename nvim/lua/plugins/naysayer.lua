return {
  'alljokecake/naysayer-theme.nvim',
  lazy = false,
  config = function()
    require('naysayer').setup({
      variant = 'main',
      dark_variant = 'main',
      bold_vert_split = false,
      dim_nc_background = false,
      disable_background = true,
      disable_float_background = true,
      disable_italics = true,
    })
  end
}

-- Using lazy.nvim
return {
  'deparr/tairiki.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('tairiki').setup {
      -- optional configuration here
    }
    require('tairiki').load()
  end,
}

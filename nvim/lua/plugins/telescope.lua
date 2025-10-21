return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.3',
	dependencies = {
		{ 'nvim-lua/plenary.nvim' }
	},
  config = function()
    require 'telescope'.setup({
      defaults = {
        path_display = {"tail"}
      },
       pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    })
  end
}

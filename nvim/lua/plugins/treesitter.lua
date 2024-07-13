return {
	'nvim-treesitter/nvim-treesitter',
  config = function ()
    require 'nvim-treesitter' .setup {
      highlight = {
        enable = true,
        disable = { "kt", "kotlin" }
      }
    }
  end
}

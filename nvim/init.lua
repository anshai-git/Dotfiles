require 'config.options'
require 'config.plugins'

require 'config.telescope'
require 'config.lspconfig'
require 'config.null-ls'

require 'config.wilder'
require 'config.treesitter'
require 'config.comment'
require 'config.mason'

-- may use other plugins that need to load first
-- let it be at the end
require 'config.keymap'

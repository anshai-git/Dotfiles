local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap =
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

return require 'packer'.startup(
    function(use)
        use 'wbthomason/packer.nvim'

        require 'plugin_config.themes'(use)
        require 'plugin_config.fzf'(use)
        require 'plugin_config.lsp-zero'(use)
        require 'plugin_config.mason'(use)
        require 'plugin_config.trouble'(use)
        require 'plugin_config.neorg'(use)
        require 'plugin_config.treesitter'(use)

        if packer_bootstrap then
            require 'packer'.sync()
        end
    end
)

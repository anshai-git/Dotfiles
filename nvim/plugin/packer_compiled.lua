-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/anshai/.cache/nvim/packer_hererocks/2.1.1696795921/share/lua/5.1/?.lua;/home/anshai/.cache/nvim/packer_hererocks/2.1.1696795921/share/lua/5.1/?/init.lua;/home/anshai/.cache/nvim/packer_hererocks/2.1.1696795921/lib/luarocks/rocks-5.1/?.lua;/home/anshai/.cache/nvim/packer_hererocks/2.1.1696795921/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/anshai/.cache/nvim/packer_hererocks/2.1.1696795921/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nÁ\1\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\rmappings\1\0\2\nbasic\2\nextra\2\nextra\1\0\3\nbelow\bgco\beol\bgcA\nabove\bgcO\ropleader\1\0\2\nblock\agb\tline\agc\ftoggler\1\0\2\nblock\bgbc\tline\bgcc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["align.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/align.nvim",
    url = "https://github.com/Vonr/align.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n`\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["boo-colorscheme-nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/boo-colorscheme-nvim",
    url = "https://github.com/rockerBOO/boo-colorscheme-nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  everforest = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  focus = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/focus",
    url = "https://github.com/nireo/focus"
  },
  fzf = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruber-darker.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/gruber-darker.nvim",
    url = "https://github.com/blazkowolf/gruber-darker.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["melange-nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/melange-nvim",
    url = "https://github.com/savq/melange-nvim"
  },
  ["miasma.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/miasma.nvim",
    url = "https://github.com/xero/miasma.nvim"
  },
  ["minty-melon"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/minty-melon",
    url = "https://github.com/antonio-hickey/minty-melon"
  },
  ["nano-theme.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/nano-theme.nvim",
    url = "https://github.com/ronisbr/nano-theme.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n÷\1\0\0\a\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0035\4\t\0005\5\a\0005\6\6\0=\6\b\5=\5\n\4=\4\v\3=\3\r\2B\0\2\1K\0\1\0\tload\1\0\0\16core.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\2\nnotes\17~/Self/Notes\ttest\f~/notes\19core.concealer\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nordic.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/nordic.nvim",
    url = "https://github.com/AlexvZyl/nordic.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\n‹\6\0\0\a\0\29\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\24\0005\4\20\0005\5\18\0004\6\0\0=\6\19\5=\5\21\0045\5\22\0004\6\0\0=\6\19\5=\5\23\4=\4\25\0035\4\26\0004\5\0\0=\5\19\4=\4\27\3=\3\28\2B\0\2\1K\0\1\0\tkeys\bfzf\1\0\3\vselect\fdefault\npaste\vctrl-p\17paste_behind\vctrl-k\14telescope\1\0\0\6n\1\0\6\vselect\t<cr>\npaste\6p\vdelete\6d\tedit\6e\vreplay\6q\17paste_behind\6P\6i\1\0\0\vcustom\1\0\6\vselect\t<cr>\npaste\n<c-p>\vdelete\n<c-d>\tedit\n<c-e>\vreplay\n<c-q>\17paste_behind\n<c-k>\21on_custom_action\1\0\1\20close_telescope\2\14on_replay\1\0\3\fset_reg\1\20close_telescope\2\18move_to_front\1\ron_paste\1\0\3\fset_reg\1\20close_telescope\2\18move_to_front\1\14on_select\1\0\2\20close_telescope\2\18move_to_front\1\fdb_path\31/databases/neoclip.sqlite3\tdata\fstdpath\afn\bvim\1\0\n\20continuous_sync\1\17length_limit\3ÄÄ@\30enable_persistent_history\1\fhistory\3Ë\a\fpreview\2\29disable_keycodes_parsing\1\24content_spec_column\1\25enable_macro_history\2\28default_register_macros\6q\21default_register\6\"\nsetup\fneoclip\frequire\0" },
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-peekup"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/nvim-peekup",
    url = "https://github.com/gennaro-tedesco/nvim-peekup"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\2\n>\0\1\5\0\4\0\0066\1\0\0009\1\1\0019\1\2\0015\3\3\0\18\4\0\0D\1\3\0\1\5\0\0\ttidy\a-i\a-q\6-\vsystem\afn\bvimÅ\3\1\0\6\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0003\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\29custom_dynamic_variables\vresult\15formatters\thtml\0\1\0\1\tjson\ajq\1\0\4\22show_curl_command\1\17show_headers\2\19show_http_info\2\rshow_url\2\14highlight\1\0\2\ftimeout\3ñ\1\fenabled\2\1\0\a\renv_file\t.env\17yank_dry_run\2\15encode_url\2\26skip_ssl_verification\1\26result_split_in_place\1\28result_split_horizontal\1\20jump_to_request\1\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/rest.nvim",
    url = "https://github.com/rest-nvim/rest.nvim"
  },
  ["seoul256.vim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/seoul256.vim",
    url = "https://github.com/junegunn/seoul256.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.com/Mofiqul/vscode.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n–\a\0\0\6\0001\0=6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\3\0005\3\f\0005\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\4=\4\r\0035\4\14\0=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0005\5\24\0=\5\25\0045\5\26\0=\5\27\4=\4\28\0035\4\30\0005\5\29\0=\5\31\0045\5 \0=\5!\4=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0035\4(\0005\5'\0=\5)\0045\5*\0=\5+\4=\4,\0035\4-\0004\5\0\0=\5.\0044\5\0\0=\5/\4=\0040\3>\3\1\2B\0\2\1K\0\1\0\fdisable\14filetypes\rbuftypes\1\0\0\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\0\0\1\3\0\0\6j\6k\20triggers_nowait\1\b\0\0\6`\6'\ag`\ag'\6\"\n<c-r>\az=\vhidden\1\t\0\0\r<silent>\n<cmd>\n<Cmd>\t<CR>\a^:\a^ \v^call \n^lua \vlayout\nwidth\1\0\2\bmin\3\20\bmax\0032\vheight\1\0\2\nalign\tleft\fspacing\3\3\1\0\2\bmin\3\4\bmax\3\25\vwindow\fpadding\1\5\0\0\3\1\3\2\3\1\3\2\vmargin\1\5\0\0\3\1\3\0\3\1\3\0\1\0\4\vborder\tnone\rposition\vbottom\rwinblend\3\0\vzindex\3Ë\a\19popup_mappings\1\0\2\16scroll_down\n<c-d>\14scroll_up\n<c-u>\nicons\1\0\3\15breadcrumb\a¬ª\ngroup\6+\14separator\b‚ûú\fmotions\1\0\1\ncount\2\15key_labels\14operators\1\0\1\agc\rComments\fplugins\1\0\4\rtriggers\tauto\14show_help\2\14show_keys\2\19ignore_missing\1\fpresets\1\0\a\6z\2\fwindows\2\14operators\2\bnav\2\17text_objects\2\fmotions\2\6g\2\rspelling\1\0\2\16suggestions\3\20\fenabled\2\1\0\2\14registers\2\nmarks\2\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zenbones.nvim"] = {
    loaded = true,
    path = "/home/anshai/.local/share/nvim/site/pack/packer/start/zenbones.nvim",
    url = "https://github.com/mcchrish/zenbones.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\2\n>\0\1\5\0\4\0\0066\1\0\0009\1\1\0019\1\2\0015\3\3\0\18\4\0\0D\1\3\0\1\5\0\0\ttidy\a-i\a-q\6-\vsystem\afn\bvimÅ\3\1\0\6\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0003\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\29custom_dynamic_variables\vresult\15formatters\thtml\0\1\0\1\tjson\ajq\1\0\4\22show_curl_command\1\17show_headers\2\19show_http_info\2\rshow_url\2\14highlight\1\0\2\ftimeout\3ñ\1\fenabled\2\1\0\a\renv_file\t.env\17yank_dry_run\2\15encode_url\2\26skip_ssl_verification\1\26result_split_in_place\1\28result_split_horizontal\1\20jump_to_request\1\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n`\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n÷\1\0\0\a\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0035\4\t\0005\5\a\0005\6\6\0=\6\b\5=\5\n\4=\4\v\3=\3\r\2B\0\2\1K\0\1\0\tload\1\0\0\16core.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\2\nnotes\17~/Self/Notes\ttest\f~/notes\19core.concealer\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\n‹\6\0\0\a\0\29\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\24\0005\4\20\0005\5\18\0004\6\0\0=\6\19\5=\5\21\0045\5\22\0004\6\0\0=\6\19\5=\5\23\4=\4\25\0035\4\26\0004\5\0\0=\5\19\4=\4\27\3=\3\28\2B\0\2\1K\0\1\0\tkeys\bfzf\1\0\3\vselect\fdefault\npaste\vctrl-p\17paste_behind\vctrl-k\14telescope\1\0\0\6n\1\0\6\vselect\t<cr>\npaste\6p\vdelete\6d\tedit\6e\vreplay\6q\17paste_behind\6P\6i\1\0\0\vcustom\1\0\6\vselect\t<cr>\npaste\n<c-p>\vdelete\n<c-d>\tedit\n<c-e>\vreplay\n<c-q>\17paste_behind\n<c-k>\21on_custom_action\1\0\1\20close_telescope\2\14on_replay\1\0\3\fset_reg\1\20close_telescope\2\18move_to_front\1\ron_paste\1\0\3\fset_reg\1\20close_telescope\2\18move_to_front\1\14on_select\1\0\2\20close_telescope\2\18move_to_front\1\fdb_path\31/databases/neoclip.sqlite3\tdata\fstdpath\afn\bvim\1\0\n\20continuous_sync\1\17length_limit\3ÄÄ@\30enable_persistent_history\1\fhistory\3Ë\a\fpreview\2\29disable_keycodes_parsing\1\24content_spec_column\1\25enable_macro_history\2\28default_register_macros\6q\21default_register\6\"\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n–\a\0\0\6\0001\0=6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\3\0005\3\f\0005\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\4=\4\r\0035\4\14\0=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0005\5\24\0=\5\25\0045\5\26\0=\5\27\4=\4\28\0035\4\30\0005\5\29\0=\5\31\0045\5 \0=\5!\4=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0035\4(\0005\5'\0=\5)\0045\5*\0=\5+\4=\4,\0035\4-\0004\5\0\0=\5.\0044\5\0\0=\5/\4=\0040\3>\3\1\2B\0\2\1K\0\1\0\fdisable\14filetypes\rbuftypes\1\0\0\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\0\0\1\3\0\0\6j\6k\20triggers_nowait\1\b\0\0\6`\6'\ag`\ag'\6\"\n<c-r>\az=\vhidden\1\t\0\0\r<silent>\n<cmd>\n<Cmd>\t<CR>\a^:\a^ \v^call \n^lua \vlayout\nwidth\1\0\2\bmin\3\20\bmax\0032\vheight\1\0\2\nalign\tleft\fspacing\3\3\1\0\2\bmin\3\4\bmax\3\25\vwindow\fpadding\1\5\0\0\3\1\3\2\3\1\3\2\vmargin\1\5\0\0\3\1\3\0\3\1\3\0\1\0\4\vborder\tnone\rposition\vbottom\rwinblend\3\0\vzindex\3Ë\a\19popup_mappings\1\0\2\16scroll_down\n<c-d>\14scroll_up\n<c-u>\nicons\1\0\3\15breadcrumb\a¬ª\ngroup\6+\14separator\b‚ûú\fmotions\1\0\1\ncount\2\15key_labels\14operators\1\0\1\agc\rComments\fplugins\1\0\4\rtriggers\tauto\14show_help\2\14show_keys\2\19ignore_missing\1\fpresets\1\0\a\6z\2\fwindows\2\14operators\2\bnav\2\17text_objects\2\fmotions\2\6g\2\rspelling\1\0\2\16suggestions\3\20\fenabled\2\1\0\2\14registers\2\nmarks\2\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nÁ\1\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\rmappings\1\0\2\nbasic\2\nextra\2\nextra\1\0\3\nbelow\bgco\beol\bgcA\nabove\bgcO\ropleader\1\0\2\nblock\agb\tline\agc\ftoggler\1\0\2\nblock\bgbc\tline\bgcc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

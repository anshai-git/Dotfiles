## Set up PATH for scripts folder
export PATH="$PATH:$CONFIG_REPO/scipts"

export CONFIG_REPO="$(pwd)"

## Neovim
mkdir --parents $HOME/.config/nvim
ln -s $CONFIG_REPO/nvim/init.lua	$HOME/.config/nvim/init.lua
ln -s $CONFIG_REPO/nvim/config		$HOME/.config/nvim/config

## Tmux
ln -s $CONFIG_REPO/tmux/.tmux.conf $HOME/.tmux.conf

## alacritty
ln -s $CONFIG_REPO/alacritty	$HOME/.config/alacritty

## Picom
ln -s $CONFIG_REPO/picom $HOME/.config/picom

## i3
ln -s $CONFIG_REPO/i3 $HOME/.config/i3

## Neofetch
ln -s $CONFIG_REPO/neofetch $HOME/.config/neofetch

## Rofi
ln -s $CONFIG_REPO/rofi $HOME/.config/rofi

## Zellij
ln -s $CONFIG_REPO/zellij $HOME/.config/zellij

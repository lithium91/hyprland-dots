#! /bin/bash

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

mkdir $HOME/.config/config.bak.d

if [[ -d "$HOME/.config/hypr" ]]; then
	mv $HOME/.config/hypr $HOME/.config/config.bak.d/
	echo "Existing ~/.config/hypr moved to ~/.config/config.bak.d/hypr"
fi

if [[ -d "$HOME/.config/fuzzel" ]]; then
	mv $HOME/.config/fuzzel $HOME/.config/config.bak.d/
	echo "Existing ~/.config/fuzzel moved to ~/.config/config.bak.d/fuzzel"
fi

if [[ -d "$HOME/.config/mako" ]]; then
	mv $HOME/.config/mako $HOME/.config/config.bak.d/
	echo "Existing ~/.config/mako moved to ~/.config/config.bak.d/mako"
fi

if [[ -d "$HOME/.config/kitty" ]]; then
	mv $HOME/.config/kitty $HOME/.config/config.bak.d/
	echo "Existing ~/.config/kitty moved to ~/.config/config.bak.d/kitty"
fi

if [[ -d "$HOME/.config/waybar" ]]; then
	mv $HOME/.config/waybar $HOME/.config/config.bak.d/
	echo "Existing ~/.config/waybar moved to ~/.config/config.bak.d/waybar"
fi

ln -s $SCRIPT_DIR/config/hypr $HOME/.config/hypr \
	&& echo "Hyprland configuration linked"
ln -s $SCRIPT_DIR/config/fuzzel $HOME/.config/fuzzel \
	&& echo "Fuzzel configuration linked"
ln -s $SCRIPT_DIR/config/mako $HOME/.config/mako \
	&& echo "Mako configuration linked"
ln -s $SCRIPT_DIR/config/kitty $HOME/.config/kitty \
	&& echo "Kitty configuration linked"
ln -s $SCRIPT_DIR/config/waybar $HOME/.config/waybar \
	&& echo "Waybar configuration linked"

echo "Ready to go!"

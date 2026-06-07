#!/bin/bash

rm -rf ~/.config/hypr
rm -rf ~/.config/kitty
rm -rf ~/.config/nvim
rm -rf ~/.config/waybar
rm -rf ~/.config/wofi

ln -s ~/.dotfiles/hypr ~/.config/hypr
ln -s ~/.dotfiles/kitty ~/.config/kitty
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/waybar ~/.config/waybar
ln -s ~/.dotfiles/wofi ~/.config/wofi

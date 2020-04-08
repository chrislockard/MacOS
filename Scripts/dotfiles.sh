#!/bin/bash

# DESCRIPTION
# Install dotfiles

# TODO: Prompt user for dotfiles repo path
echo "[DOTFILES] Cloning dotfiles into ~/Documents/ folder..."
cd ~/Documents/
git clone https://github.com/chrislockard/dotfiles.git
echo ""

echo "[DOTFILES] Backing up existing ZSH config..."
cp ~/.zshrc ~/.zshrc.old
cp ~/.zshenv ~/.zshenv.old
cp ~/.zprofile ~/.zprofile.old
echo ""

echo "[DOTFILES] Symlinking ZSH dotfiles..."
ln -s ~/Documents/dotfiles/Shell/.zshrc ~/.zshrc
ln -s ~/Documents/dotfiles/Shell/.zshenv ~/.zshenv
ln -s ~/Documents/dotfiles/Shell/.zprofile ~/.zprofile
echo ""

echo "[DOTFILES] Symlinking DooM Emacs config..."
ln -s ~/Documents/dotfiles/Emacs/.doom.d ~/.doom.d
echo ""

echo "[DOTFILES] Symlinking mail signature..."
ln -s ~/Documents/dotfiles/.mailsignature ~/.emacs.d/.mailsignature
echo ""

echo "[DOTFILES] Symlinking mbsync rc..."
ln -s ~/Documents/dotfiles/Shell/.mbsyncrc ~/.mbsyncrc
echo ""

echo "[DOTFILES] Symlinking Emacs authinfo.gpg..."
ln -s ~/Documents/dotfiles/Emacs/.authinfo.gpg ~/.emacs.d/.authinfo.gpg
echo ""


#echo "[CONFIG] Enable developer mode for admin users"
#sudo /usr/sbin/DevToolsSecurity -enable
#echo ""

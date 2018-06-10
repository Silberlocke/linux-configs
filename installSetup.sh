#!/bin/bash


print() {
  echo -e "\033[1;31m$1\033[0m"
}

print "Installing gtk and qt4 appearence packages. Make sure to execute lxappearance and gtk-chtheme later to select themes and choose the gtk+ theme in qt-4"
sudo pacman -S qt-4 lxappearance gtk-chtheme
print "Installing chromium"
sudo pacman -S chromium
print "Installing zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
print "Installing additional packes mentioned in .zshrc"
sudo pacman -S thefuck keychain
print "Installing terminal and file manager"
sudo pacman -S gnome-terminal nautilus

# maybe run ssh-keygen



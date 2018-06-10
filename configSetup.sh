#!/bin/bash


print() {
  echo -e "\033[1;31m$1\033[0m"
}
zsh
print "Changing default shell to zsh"
chsh -s /usr/bin/zsh


print "Copying .zsrhc"
cp configs/.zshrc ~/.zshrc

print "Reloading .zsrhc"
source ~/.zshrc

print "Copying i3 config"
cp configs/.i3/config ~/.config/i3/config

print "Reloading i3"
i3-msg reload

print "Reloading terminal config"
dconf load /org/gnome/terminal/ < gnome-terminal.dconf


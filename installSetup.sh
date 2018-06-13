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

print "Installing aur package manager aurman"
mkdir tmpInstallDir
cd tmpInstallDir
curl https://aur.archlinux.org/cgit/aur.git/snapshot/aurman.tar.gz --output aurman.tar.gz
tar xzvf aurman.tar.gz
cd aurman
makepkg -Acs
sudo pacman -U aurman-2.10-1-any.pkg.tar.xz
cd ../..
rm -rf tmpInstallDir


# run ssh-keygen if key doesn't exist yet
if [ ! -f ~/.ssh/id_rsa ]; then
  print "Generating ssh key"
  ssh-keygen -f ~/.ssh/id_rsa
fi

print "Installing thunderbird"
sudo pacman -S thunderbird

sudo pacman -S pycharm
sudo pacman -S intellij-idea-community-edition
sudo pacman -S python-pip
sudo pacman -S python-numpy python-scipy

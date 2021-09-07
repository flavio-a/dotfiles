# dotfiles
Just my dotfiles

# TODO
Nothing to do (at least that I'm aware of), yay ^^

# Dependencies
This repo depends on dotdrop, already listed as submodule

The python environment may be handled however you like, but the
suggested way is to use pipenv (this is already integrated in
the dotfiles contained in this repo)
'''
apt install pipenv
'''

Dependencies for installation of dotfiles are those required by actions:
- antibody

# Installation
Brief instructions for fresh installations

Install git and clone this repo
'''
apt install git
git clone --recursive https://github.com/flavio-a/dotfiles.git
'''

Install some utils
'''
apt install zsh emacs-nox rsync curl htop \
    xterm byobu \
    openbox qt5-style-kvantum-themes autorandr tint2 xscreensaver \
    numlockx nitrogen xfce4-notifyd gmrun thunar \
    evince mpv gismplecal
TO SORT: telegram-desktop pasystray caffeine xviewer
'''

Copy from another host `secret-vars.yaml`.

Install dependencies of this repo. When done, setup the virtualenv and
install dotfiles. Usage of pipenv in dir, as used in the dotfiles.
If antibody is installed for the user (as suggested in the dependencies
section) add it to the $PATH
'''
export PIPENV_VENV_IN_PROJECT="y"
pipenv sync
pipenv shell
export PATH="$HOME/.local/bin:$PATH"
./dotdrop.sh install -p <profile>
'''
Remember to add the profile if the hostname doesn't match any

Change the default shell to zsh if needed
'''
chsh -s /usr/bin/zsh
'''

Copy wallpapers to `~/.config/openbox/wallpapers/`

Logout and then login again to enjoy at best the installed dotfiles.

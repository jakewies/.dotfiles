# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.antibody \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.yarn \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.direnv

# stow dotfiles
stow git
stow nvim
stow tmux
stow zsh

# Use kitty terminal on MacOS
[ `uname -s` = 'Darwin' ] && stow kitty

# need to add nix-profile stuff into .zshrc

# add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

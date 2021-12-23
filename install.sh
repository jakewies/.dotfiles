# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

echo '🚀 Install packages'
packages=(
	antibody
	bat
	direnv
	fzf
	gcc
	git
	gnumake
	neovim
	ripgrep
	stow
	tmux
	yarn
)
for package in ${packages[@]}
do 
	echo "📦 Installing $package"
	nix-env -iA nixpkgs.$package
done

echo "🚀 Stow dirs"
stow_dirs=(
	git
	nvim
	tmux
	zsh
)
for stow_dir in ${stow_dirs[@]}
do 
	stow $stow_dir
done

echo "🚀 Configure "ZSH as default shell"
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $USER

echo "🎁 Bundle antibody plugins"
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

echo "🔨 Install nvim plugins"
nvim --headless +PlugInstall +qall

# Use kitty terminal on MacOS
[ `uname -s` = 'Darwin' ] && stow kitty

zsh 

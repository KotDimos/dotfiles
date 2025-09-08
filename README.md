# my dotfiles

# Cloning repository

ssh:
```bash
git clone git@github.com:KotDimos/dotfiles.git $HOME/.dotfiles
```
https:
```bash
git clone https://github.com/kotdimos/dotfiles.git $HOME/.dotfiles
```

# List scripts

* `.zshrc` - config for zsh.
* `.kuberc` - config for kuberc.
* `.tmux.conf` - config for tmux.
* `init.vim` - old vim config. My new config for neovim - [link](https://github.com/KotDimos/KotNeoVim).
* `.gitconfig` - global config for git.
* `.gitmessage` - global message for git commit.
* `motd.sh` - welcome script when creating a new session.
* `bin` - my scripts.


## bin

* ansible
    * `ansible-check` - checking ansible code using linters.
* docker
    * `clear-docker` - cleaning docker of unnecessary data.
    * `ctop-monitoring` - start ctop monitoring in the container.
    * `docker-logs-du` - viewing the size of container logs.
    * `docker-df` - analysis and output of docker data.
* minikube / kubernetes
    * `minikube-delete` - delete minikube.
    * `minikube-start` - start minikube.
    * `minikube-update` - install or update minikube.


# Settings zsh

## Isntall zsh

```bash
dnf install zsh     # Fedora/RHEL
apt install zsh     # Debian/Ubuntu
pacman -S zsh       # Arch
brew install zsh    # MacOS
```


## Download oh-my-zsh

[link](https://ohmyz.sh/) for download oh-my-zsh

## Add fonts

[Link](https://github.com/romkatv/powerlevel10k#fonts) on official documents.


## Install themes and plugins

Theme powerlevel10k:
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh‑my‑zsh/custom}/themes/powerlevel10k
```

Plugins:
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh‑my‑zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh‑my‑zsh/custom}/plugins/zsh-syntax-highlighting
```

## Copy zshrc config

```bash
cp $HOME/.dotfiles/.zshrc $HOME/.zshrc
source $HOME/.zshrc
```


# Tmux settings

## Cloning tmux plugin manager

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Copy config

```bash
cp $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf
```

## Start install plugins

```bash
tmux new
```

Press `tmux-prefix` + `I` for install plugins

## Utils for clipboard

for Xorg 11:
```bash
apt install xclip
```

for Wayland:
```bash
apt install wl-clipboard
```

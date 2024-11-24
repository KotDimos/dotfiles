# my dotfiles

Сборник моих файлов для восстановление системы.


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

* `.zshrc` - конфигурация для zsh.
* `.tmux.conf` - конфигурация для tmux.
* `init.vim` - конфигурация для vim/neovim (устарела, теперь лежит в [тут](https://github.com/KotDimos/KotNeoVim)).
* `.gitconfig` - глобальная конфигурация git.
* `motd.sh` - приветсвенный скрипт при создании новой сессии.
* `bin` - мои скрипты.

## bin

Описание скриптов.

* ansible
    * `ansible-check` - проверка ansible кода с помощью linters.
* docker
    * `clear-docker` - очистка docker от лишних данных.
    * `ctop-monitoring` - запуск ctop мониторинга в контейнере.
    * `docker-logs-du` - просмотр размера логов контейнеров.
    * `docker-df` - анализ и вывод данных docker.
* minikube / kubernetes
    * `minikube-delete` - удаление minikube.
    * `minikube-start` - старт minikube.
    * `minikube-update` - установка или обновление minikube.


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

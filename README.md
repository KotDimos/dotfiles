# my dotfiles

Сборник моих файлов для восстановление системы.

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

# Клонирование

    git clone $HOME/.dotfiles

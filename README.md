# my dotfiles

Сборник моих файлов для восстановление системы.

* `.zshrc` - конфигурация для zsh.
* `.tmux.conf` - конфигурация для tmux.
* `init.vim` - конфигурация для vim/neovim.
* `bin` - мои скрипты.

## bin

Описание скриптов.

* ansible
    * `ansible_check` - проверка ansible кода с помощью linters.
* docker
    * `clear_docker` - очистка docker от лишних данных.
    * `ctop_monitoring` - запуск ctop мониторинга в контейнере.
    * `delete_whitespace` - удаление лишних пробелов в конце строки.
    * `docker_logs_df` - просмотр размера логов контейнеров.
    * `docker_df` - анализ и вывод данных docker.
    * `find_docker` - поиск контейнеров по определённому параметру.
* minikube / kubernetes
    * `minikube_delete` - удаление minikube.
    * `minikube_start` - старт minikube.
    * `minikube_update` - установка или обновление minikube.
* tmux
    * `tmux_start` - запуск tmux.

# Клонирование

    git clone $HOME/.dotfiles

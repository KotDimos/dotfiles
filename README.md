# my dotfiles

Клонирование репозитория.

По https.

``` bash
git clone https://github.com/KotDimos/dotfiles.git
```
По ssh.

``` bash
git clone git@github.com:KotDimos/dotfiles.git
```

В файле hosts.ini поменять пользователя и пароль. Либо же добавить свои.
В install.yml поставить все роли, которые требуются.

Запуск плэйбука.

    ansible-playbook install.yml -i hosts.ini

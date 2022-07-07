#!/usr/bin/env bash

sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

curl -1sLf \
   'https://dl.cloudsmith.io/public/balena/etcher/setup.rpm.sh' \
   | sudo -E bash

sudo dnf update

# gui utilities
sudo dnf install -y \
                    kate \
                    gparted \
                    telegram-desktop \
                    discord \
                    balena-etcher-electron \
                    kolourpaint \
                    gimp

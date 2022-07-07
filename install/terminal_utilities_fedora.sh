#!/usr/bin/env bash

sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
# dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf update

# terminal utilities
sudo dnf install -y \
                    vim \
                    neovim \
                    mpv \
                    gcc \
                    git \
                    cmatrix \
                    bat \
                    ack \
                    ag

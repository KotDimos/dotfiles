#!/usr/bin/env bash

sudo dnf update

# terminal utilities
sudo dnf install -y \
                    vim \
                    nvim \
                    neovim \
                    mpv \
                    gcc \
                    glibc-static \
                    git \
                    cmatrix \
                    bat \
                    ack \
                    ag

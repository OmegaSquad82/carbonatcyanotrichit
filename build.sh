#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages
rpm-ostree install \
    bpytop \
    byobu \
    cowsay \
    goverlay \
    htop \
    kitty \
    mangohud \
    neovim \
    powertop \
    tlp

### Manage additional services
systemctl disable podman.socket
systemctl enable sshd.service
systemctl disable tailscaled.service

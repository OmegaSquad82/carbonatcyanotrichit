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
    netdata \
    powertop \
    tlp

### Enable additional services
systemctl enable podman.socket
systemctl enable sshd.service
systemctl disable tailscaled.service

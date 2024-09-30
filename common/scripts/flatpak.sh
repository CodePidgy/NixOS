#!/run/current-system/sw/bin/bash

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub com.axosoft.GitKraken
flatpak install -y flathub com.dropbox.Client

#!/run/current-system/sw/bin/bash

pipx install black
pipx install poetry

poetry config virtualenvs.in-project true

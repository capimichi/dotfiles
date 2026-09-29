#!/bin/bash
set -euo pipefail

PLUGINS_DIR="$HOME/.config/tmux/plugins"
CONF="$HOME/.config/tmux/tmux.conf"

mkdir -p "$PLUGINS_DIR"

# Clona ogni plugin dichiarato con "set -g @plugin 'user/repo'" (non serve un server tmux attivo)
grep -oE "@plugin '[^']+'" "$CONF" | sed -E "s/@plugin '([^']+)'/\1/" | while read -r repo; do
    dest="$PLUGINS_DIR/$(basename "$repo")"
    if [ ! -d "$dest" ]; then
        echo "==> Clonazione $repo..."
        git clone --depth 1 "https://github.com/$repo" "$dest"
    fi
done

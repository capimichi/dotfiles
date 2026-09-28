#!/bin/bash
set -euo pipefail

TPM_DIR="$HOME/.tmux/plugins/tpm"

# 1. Clona TPM se non esiste
if [ ! -d "$TPM_DIR" ]; then
    echo "==> Clonazione Tmux Plugin Manager (TPM)..."
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi

# 2. Installa automaticamente i plugin definiti nel tmux.conf
if [ -f "$TPM_DIR/bin/install_plugins" ]; then
    echo "==> Installazione plugin tmux in corso..."
    "$TPM_DIR/bin/install_plugins"
fi

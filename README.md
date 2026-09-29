# 🛠️ Dotfiles di Michele Capicchioni

Dotfiles personali gestiti con [chezmoi](https://www.chezmoi.io/), progettati per essere modulari, sicuri e multipiattaforma (macOS / Linux).

---

## 📐 Filosofia e Standard XDG Base Directory

Uno dei principi cardine di questa configurazione è l'**adesione rigorosa allo standard [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)** con l'obiettivo di mantenere la `$HOME` pulita e libera da dotfile sparsi:

| Scopo | Percorso Standard | Utilizzo nei Dotfiles |
| :--- | :--- | :--- |
| **Configurazioni** | `$XDG_CONFIG_HOME` (`~/.config/`) | Ghostty, Tmux, Neovim, Yazi, Zellij, moduli shell |
| **Dati & Runtime** | `$XDG_DATA_HOME` (`~/.local/share/`) | Chezmoi source, sessioni Tmux Resurrect, dati LazyVim |
| **Cache** | `$XDG_CACHE_HOME` (`~/.cache/`) | Cache strumenti e compilazioni |
| **Binari Utente** | `~/.local/bin` | Script e CLI personali |

### Esempi di migrazione XDG applicati:
* **Tmux**: configurazione in `~/.config/tmux/tmux.conf`, plugin in `~/.config/tmux/plugins/` e salvataggio sessioni (`tmux-resurrect`) in `~/.local/share/tmux/resurrect/`.
* **Ghostty**: configurazione in `~/.config/ghostty/config`.
* **Neovim (LazyVim)**: configurazione isolata in `~/.config/nvim/`.
* **Yazi**: `~/.config/yazi/yazi.toml`.
* **Zellij**: `~/.config/zellij/config.kdl` e layout in `~/.config/zellij/layouts/`.
* **Shell Environments**: moduli per-ambiente posizionati in `~/.config/zsh/envs/`.

---

## 🏢 Gestione Multi-Ambiente (`personal` vs `work`)

All'inizializzazione (`chezmoi init`), un prompt interattivo memorizza l'ambiente della macchina in locale (`~/.config/chezmoi/chezmoi.toml`):

* **`personal`**: abilita l'integrazione con Bitwarden per estrarre in modo sicuro token e credenziali per API e skill personali (Paperless, Stremio, Nuvio, Trakt, SoulSync, ListenBrainz) dentro `~/.config/zsh/envs/personal.zsh`.
* **`work`**: esclude totalmente il vault Bitwarden personale tramite `.chezmoiignore` e carica unicamente le impostazioni lavorative da `~/.config/zsh/envs/work.zsh`.

---

## 🔐 Gestione Sicurezza e Segreti

* Nessun token, password o chiave privata viene mai committato nel repository pubblico.
* I segreti personali vengono iniettati compilando template Chezmoi interrogando Bitwarden CLI (`bw`).
* I file temporanei e le sessioni locali risiedono in `~/.zshrc.local` (escluso esplicitamente da `.chezmoiignore`).

---

## 🚀 Bootstrap su una Nuova Macchina

Per configurare una nuova macchina da zero con un singolo comando:

```bash
chezmoi init --apply capimichi
```

Chezmoi chiederà l'ambiente (`personal` / `work`), clonerà la configurazione e installerà automaticamente plugin e tool necessari.

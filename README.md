# config

My configuration files.

- `nvim/` - Neovim config
- `ghostty/` - Ghostty terminal config
- `starship.toml` - Starship prompt config
- `direnv/` - direnv config with helper functions for venv activation
- `claude/` - Claude Code config (symlinked to `~/.claude/CLAUDE.md`)
- `shell/` - Shell config (zoxide init and common paths)

## Install

```sh
brew install neovim
brew install ghostty
brew install starship
brew install direnv
brew install zoxide
```

## Setup

Symlinks:

```sh
ln -sf ~/.config/claude/CLAUDE.md ~/.claude/CLAUDE.md
```

Add to `~/.zshenv`:

```sh
export CONFIG_PROFILE=kensho  # or omit for personal
```

Add to `~/.zshrc`:

```sh
# direnv (suppress logging)
export DIRENV_LOG_FORMAT=
eval "$(direnv hook zsh)"

# Zoxide (smart cd)
[[ -f ~/.config/shell/zoxide.sh ]] && source ~/.config/shell/zoxide.sh

# Starship prompt
eval "$(starship init zsh)"
```

# Dotfiles

Personal dotfiles for macOS. Targets Sequoia (15+), zsh, Warp, VS Code, Hammerspoon, Homebrew Ruby.

## Install

```sh
git clone git@github.com:<you>/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install
chmod +x .osx && ./.osx
```

## Per-machine config (`zsh/.zshrc.local`)

Machine-specific secrets and git identity live in `zsh/.zshrc.local`. This
file is **gitignored** but lives inside the repo so it sits alongside the
rest of the zsh config; `install` symlinks it to `$HOME/.zshrc.local` and
the main `.zshrc` sources it on shell startup.

The tracked file [zsh/.zshrc.local.example](zsh/.zshrc.local.example) is the
template. `install` copies it to `zsh/.zshrc.local` (with `chmod 600`) on
first run if you don't already have one.

Manual setup, equivalent to what `install` does:

```sh
cp zsh/.zshrc.local.example zsh/.zshrc.local
chmod 600 zsh/.zshrc.local
ln -nfs "$(pwd)/zsh/.zshrc.local" ~/.zshrc.local
$EDITOR zsh/.zshrc.local   # set git email + secrets for this machine
```

Use a different email on the personal vs work machine. Same dotfiles repo
works on both — no diverging branches.

## Ruby

Ruby version manager init lives in `~/.zshrc.local` because the choice is
per-machine:

- **Work**: `rbenv` (`brew install rbenv`)
- **Home**: `chruby` + `ruby-install` (`brew install chruby ruby-install`)

See [zsh/.zshrc.local.example](zsh/.zshrc.local.example) for the one-line init
snippet for either. `.ruby-version` is symlinked into `$HOME`, so both
managers auto-switch to it.

## Layout

- `zsh/.zshrc` + `zsh/.zsh/` — shell config, aliases, git helpers, bundler/rails shortcuts
- `hammerspoon/` — window management + app hotkeys (⌘1 Warp, ⌘2 Code, ⌘3 Chrome, ⌘4 Spotify)
- `.osx` — macOS defaults (Sequoia-compatible subset)
- `.gemrc`, `.irbrc`, `.ruby-version` — Ruby config
- `.gitignore_global` — global git ignore list

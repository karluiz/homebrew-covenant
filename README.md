# homebrew-covenant

Homebrew tap for [Covenant](https://covenant.uno) — the AI-native terminal for macOS.

## Install

```bash
brew install --cask karluiz/covenant/covenant
```

That's it. The cask handles the download, verifies the signed/notarized `.dmg`, and installs `Covenant.app` to `/Applications`.

## Upgrade

```bash
brew upgrade --cask covenant
```

## Uninstall

```bash
brew uninstall --cask covenant
```

The cask's `zap` block also removes Covenant's application support, caches, preferences, and logs if you run `brew uninstall --cask covenant --zap`.

## Requirements

- macOS Ventura (13) or later
- Apple silicon (arm64)

Intel support is on the roadmap.

## How this tap is maintained

The cask in `Casks/covenant.rb` is auto-updated by Covenant's release workflow on every tagged release. Do not edit it by hand — open an issue on [karluiz/covenant](https://github.com/karluiz/covenant) instead.

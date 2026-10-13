# Openwalk for Homebrew

```sh
brew install --cask amanuel2/walk/walk
```

The cask installs the notarized Openwalk.app from https://walk.md (Apple silicon, macOS 12+).
Openwalk updates itself. `brew uninstall --cask walk` removes the app; add `--zap` to also remove
its data (`~/.openwalk`).

To use the short name instead: `brew tap amanuel2/walk && brew trust --cask amanuel2/walk/walk`,
then `brew install --cask walk`.

`Casks/walk.rb` is updated by Openwalk's release script on every stable release.

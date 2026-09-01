# Focuh Homebrew tap

Homebrew cask for [Focuh](https://www.focuh.com), a focus timer for macOS with
system-wide website and app blocking and Google Calendar sync.

```sh
brew install --cask maxxthedeveloper/tap/focuh
```

That taps this repo and installs the latest release from
[focuh-releases](https://github.com/maxxthedeveloper/focuh-releases).
Focuh updates itself in-app, so `brew upgrade` is only needed when the
cask version here moves ahead of what you have installed.

Uninstall with `brew uninstall --cask focuh`, or `brew uninstall --zap --cask focuh`
to also remove settings and caches.

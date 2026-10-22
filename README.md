# Homebrew Tap for Zimi

Offline knowledge server for ZIM files: search and read 100M+ articles from Wikipedia, Stack Overflow, dev docs, and more.

## Install

```bash
brew tap epheterson/zimi
brew install --cask zimi
```

## Update

```bash
brew upgrade --cask zimi
```

## Where the cask comes from

`Casks/zimi.rb` is rewritten by the desktop release workflow in [epheterson/Zimi](https://github.com/epheterson/Zimi) on every release; do not edit it by hand. The DMGs it points to carry GitHub build-provenance attestations:

```bash
gh attestation verify Zimi-<version>-mac-arm64.dmg --repo epheterson/Zimi
```

## More Info

- [Zimi on GitHub](https://github.com/epheterson/Zimi)
- [What are ZIM files?](https://wiki.openzim.org/wiki/ZIM_file_format)
- [Security policy](SECURITY.md)

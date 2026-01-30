# Homebrew Tap for BM3DORNL

This is the official Homebrew tap for [BM3DORNL](https://github.com/ornlneutronimaging/bm3dornl), a BM3D denoising application for ring artifact removal in neutron imaging.

## Installation

```bash
brew tap ornlneutronimaging/bm3dornl
brew install --cask bm3dornl
```

## Available Casks

| Cask | Description |
|------|-------------|
| `bm3dornl` | GUI application for BM3D ring artifact removal |

## Requirements

- macOS Big Sur (11.0) or later
- Apple Silicon (ARM64)

## Note on Quarantine

The app is not code-signed with an Apple Developer certificate. During installation, the cask automatically removes the macOS quarantine attribute (`xattr -cr`) so the app can launch without triggering Gatekeeper's "app is damaged" warning.

If you prefer to verify the app manually before removing quarantine, you can install with:

```bash
brew install --cask --no-quarantine bm3dornl
```

Then inspect the app and remove quarantine yourself:

```bash
xattr -cr /Applications/bm3dornl.app
```

## Updating

```bash
brew update
brew upgrade --cask bm3dornl
```

## Uninstalling

```bash
brew uninstall --cask bm3dornl
brew untap ornlneutronimaging/bm3dornl
```

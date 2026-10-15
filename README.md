# Huntington Applied Homebrew tap

Homebrew formulae for the Huntington Applied command-line clients. Each formula installs the
prebuilt binary published at `https://downloads.<product domain>/cli/releases/<version>/` and
checks it against that release's `SHA256SUMS`.

## Install

```bash
brew tap huntingtonapplied/tap
brew install huntingtonapplied/tap/<cli>
```

For example:

```bash
brew install huntingtonapplied/tap/nods
nods --version
```

## Formulae

| Formula | Product | Source |
|---|---|---|
| `boltzmann` | [Boltzmann](https://boltzmann.app) | [boltzmann-cli](https://github.com/huntingtonapplied/boltzmann-cli) |
| `chief` | [Chief](https://badgechief.com) | [chief-cli](https://github.com/huntingtonapplied/chief-cli) |
| `document-scanner` | [Document Scanner](https://documentscanner.app) | [document-scanner-cli](https://github.com/huntingtonapplied/document-scanner-cli) |
| `fasci` | [FASCI](https://fasci.app) | [fasci-cli](https://github.com/huntingtonapplied/fasci-cli) |
| `landslide` | [Landslide](https://landslide.global) | [landslide-cli](https://github.com/huntingtonapplied/landslide-cli) |
| `nods` | [NODS](https://nods.dev) | [nods-cli](https://github.com/huntingtonapplied/nods-cli) |
| `sentinel` | [Sentinel](https://sentinelscanner.com) | [sentinel-cli](https://github.com/huntingtonapplied/sentinel-cli) |
| `slai` | [SmartLoad AI](https://smartloadai.com) | [slai-cli](https://github.com/huntingtonapplied/slai-cli) |
| `tea` | [Tea](https://goodtea.world) | [tea-cli](https://github.com/huntingtonapplied/tea-cli) |
| `tillio` | [Tillio](https://tillio.ai) | [tillio-cli](https://github.com/huntingtonapplied/tillio-cli) |

Each CLI is a client for its hosted product and needs an account and API key on that product to do
real work. `--version`, `--help` and `doctor` run without one.

## Platforms

- macOS on Apple silicon (arm64)
- Linux on x86_64

Intel Macs and Linux on arm64 have no published binary yet, so the formulae do not install there.

## Notes

- The macOS binaries are not yet notarized by Apple.
- The `tea` and `sentinel` formula names are scoped to this tap. Use the full
  `huntingtonapplied/tap/<cli>` name so Homebrew does not pick a formula with the same name from
  another tap or from homebrew-core.

## License

The formulae in this repository are MIT licensed. Each CLI carries its own license in its source
repository (all MIT).

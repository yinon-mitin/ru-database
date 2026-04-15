# RU Database for Profilarr

Custom **Profilarr** database focused on **Russian trackers** and practical release selection for **Radarr** and **Sonarr**.

Repository: `yinon-mitin/ru-database`

## Purpose

This database adds release parsing and quality logic that fits real-world releases from the Russian tracker ecosystem, where naming is often inconsistent and where useful markers such as `SDR`, `HEVC`, `WEB-DL`, `WEBRip`, `BDRip`, `BluRay`, `REMUX`, `HDR`, `HDR10`, `HDR10+`, and `DV` appear in many different combinations.

The goal is simple:

- make **Profilarr** understand Russian-style release names better
- keep profiles easy to switch between
- prefer **high quality playable files**
- reject junk such as:
  - full Blu-ray disc structures
  - ISO / BDMV
  - low quality releases
  - AV1 where unwanted
  - AI upscale / fake upscale / obvious garbage

This repository is intended for setups using:

- **Profilarr**
- **Radarr**
- **Sonarr**
- **Prowlarr**
- Russian trackers such as:
  - **RuTracker**
  - **RuTor**
  - **Kinozal**

## What this repository contains

The database currently includes:

- **Regex Patterns**
  - release title matchers for Russian tracker naming
- **Custom Formats**
  - reusable logic based on those patterns
- **Quality Profiles**
  - ready-to-use profiles for SDR and HDR workflows

## Philosophy

This repository does **not** treat all Blu-ray-derived releases as bad.

Important distinction:

- **Rejected**
  - `BDMV`
  - `ISO`
  - `FULL BLURAY`
  - complete disc structures
- **Allowed**
  - `REMUX`
  - single-file MKV remux releases that play fine in Jellyfin

That matters because a **BluRay Remux** is usually a normal media file, while a full disc dump is not.

## Created profiles

The following quality profiles were created.

### SDR profiles

#### `RU 1080p SDR`
For users who want **Full HD SDR** content with strong preference for clean, high-quality releases.

Behavior:
- prefers:
  - `Remux-1080p`
  - `WEBDL-1080p`
  - `Bluray-1080p`
  - `WEBRip-1080p`
- rewards:
  - `HEVC`
  - `REMUX`
  - `WEB-DL`
  - `WEBRip`
  - `BDRip/BluRay`
- rejects:
  - `HDR / HDR10 / HDR10+ / DV / HLG`
  - `BDMV / ISO / FULL BLURAY`
  - `AV1`
  - `LQ`
  - `Upscale`
  - `AI Upscale`

Best for:
- standard SDR TVs
- users who want high compatibility
- users who want good 1080p quality without full disc junk

---

#### `RU 2160p SDR`
For users who want **4K SDR** releases and want to avoid HDR-only copies.

Behavior:
- prefers:
  - `Remux-2160p`
  - `WEBDL-2160p`
  - `Bluray-2160p`
  - `WEBRip-2160p`
- strongly rewards:
  - explicit `SDR`
  - `HEVC`
  - `REMUX`
  - `WEB-DL`
  - `10bit`
- rejects:
  - `HDR / HDR10 / HDR10+ / DV / HLG`
  - `BDMV / ISO / FULL BLURAY`
  - `AV1`
  - `LQ`
  - `Upscale`
  - `AI Upscale`

Best for:
- 4K playback where **SDR is preferred**
- Jellyfin libraries focused on direct-play friendly files
- users who want “fat” 4K releases without disc structures

---

### HDR profiles

#### `RU 1080p HDR`
For users who want **1080p HDR-family** releases.

Behavior:
- prefers:
  - `Remux-1080p`
  - `WEBDL-1080p`
  - `Bluray-1080p`
  - `WEBRip-1080p`
- rewards:
  - `HDR`
  - `HDR10`
  - `HDR10+`
  - `DV`
  - `HEVC`
  - `REMUX`
- rejects:
  - `BDMV / ISO / FULL BLURAY`
  - `AV1`
  - `LQ`
  - `Upscale`
  - `AI Upscale`

Best for:
- HDR-capable 1080p playback chains
- users who want HDR variants without full disc dumps

---

#### `RU 2160p HDR`
For users who want **4K HDR-family** releases.

Behavior:
- prefers:
  - `Remux-2160p`
  - `WEBDL-2160p`
  - `Bluray-2160p`
  - `WEBRip-2160p`
- rewards:
  - `HDR`
  - `HDR10`
  - `HDR10+`
  - `DV`
  - `HEVC`
  - `REMUX`
  - `10bit`
- rejects:
  - `BDMV / ISO / FULL BLURAY`
  - `AV1`
  - `LQ`
  - `Upscale`
  - `AI Upscale`

Best for:
- HDR-capable 4K TVs
- users who want the best quality releases available from Russian trackers
- users who want Remux and premium WEB-DL content without disc-folder nonsense

## Custom formats included

The database includes custom formats for the following kinds of detection:

### Positive formats
- `RU SDR`
- `RU HEVC`
- `RU WEB-DL`
- `RU WEBRip`
- `RU BDRip BluRay`
- `RU 10bit`
- `RU REMUX`
- `RU HDR`
- `RU HDR10`
- `RU HDR10+`
- `RU DV`
- `RU HDR ANY`

### Reject formats
- `RU Reject HDR DV HLG`
- `RU Reject BR-DISK`
- `RU Reject AV1`
- `RU Reject LQ`
- `RU Reject Upscale`
- `RU Reject AI`

## Why this exists

Default databases and generic TRaSH-style setups are useful, but Russian trackers often need extra handling because release names can be:

- mixed-language
- inconsistent
- overloaded with tags
- noisy
- full of fake upscale / “AI enhanced” junk
- unclear about SDR vs HDR unless parsed carefully

This repository exists to reduce that pain and make quality profile switching much easier.

## Recommended usage

Typical workflow:

1. Use **Prowlarr** for indexers
2. Use **Profilarr** for profile sync
3. Import this database into Profilarr
4. Sync selected profiles to:
   - **Radarr**
   - **Sonarr**

Recommended profile set for most users:

- `RU 1080p SDR`
- `RU 2160p SDR`
- `RU 1080p HDR`
- `RU 2160p HDR`

That gives a clean and practical set of choices without turning the library into a circus.

## Notes

- Built for practical use with Russian tracker releases
- Focused on **file-based playback**
- Designed with **Jellyfin compatibility** in mind
- Explicitly avoids full disc structures while keeping good remuxes

## Status

Active custom database under development.

Rules, regex, and scores may continue to evolve as more tracker samples are tested.

## License

MIT Licence - Free to use and customisation. Adjust scores and patterns to fit your own setup, hardware, and content preferences.

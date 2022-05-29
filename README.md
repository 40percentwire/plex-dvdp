# Plex Dolby Vision Direct Play

Inspired by a Plex forum post: [Color space is not supported error after updating to 1.25.5](https://forums.plex.tv/t/color-space-is-not-supported-error-after-updating-to-1-25-5/779727/86)

This shell script aims to automate the conversion of Dolby Vision encoded media to be played by Plex on Apple devices.

## Usage

```
cd /path/to/dolby/vision/media
plex-dvdp.sh mkv
```

## Installation

I have provided convenient one-liners for each step of the installation process, but as with any forum post or repository, you should always read and understand the code you are executing.

### Install Dependencies
ffmpeg

```brew install ffmpeg```

[mp4dovi](https://github.com/omgcli/mp4dovi)

```curl -L https://github.com/omgcli/mp4dovi/releases/download/v1.0.0/mp4dovi_1.0.0_darwin_amd64.tar.gz | tar -xz mp4dovi && sudo chown root:wheel mp4dovi && sudo mv mp4dovi /usr/local/bin```

### Install plex-dvdp
```curl -L https://raw.githubusercontent.com/40percentwire/plex-dvdp/main/plex-dvdp.sh && sudo chmod +x plex-dvdp.sh && sudo chown root:wheel plex-dvdp.sh && sudo mv plex-dvdp.sh /usr/local/bin```

### Known Issues
You may encounter issues with files that were downloaded from the internet on your Mac. If you are having difficulty running these programs after install, navigate in Finder to /usr/local/bin. Press Ctrl and right-click on both `mp4dovi`. Select "Open" in the context menu. Repeat this step for `plex-dvdp.sh`. This process may open a terminal window with output, but this should have no effect because both programs require input. Subsequent runs will then be allowed.

## Special Thanks
[Volts](https://forums.plex.tv/u/volts/summary)

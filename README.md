# docker-youtube-dl-vtt-to-srt

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/darodi/docker-youtube-dl-vtt-to-srt/Docker)](https://github.com/darodi/docker-youtube-dl-vtt-to-srt/actions/workflows/docker-publish.yml)

## Introduction

this docker image uses the base docker image from   
https://github.com/mikenye/docker-youtube-dl

\+ adds the capability to convert subtitles downloaded from vtt fo srt  
see https://github.com/darodi/vtt-to-srt

## 💾 Installation / build

```
docker build -t darodi/docker-youtube-dl-vtt-to-srt:latest .
```
or `build.sh`

# 📙 Usage

same as https://github.com/mikenye/docker-youtube-dl

but the image name is `ghcr.io/darodi/docker-youtube-dl-vtt-to-srt:latest` instead of `mikenye/youtube-dl`

example: `download_list.sh`

```
#!/bin/bash
docker run --rm -i -e PGID=1000 -e PUID=1000 -e UPDATE_YOUTUBE_DL=true -v "$(pwd)":/workdir:rw ghcr.io/darodi/docker-youtube-dl-vtt-to-srt:latest -a list -f "bv*[height <=? 480]+ba[language*=en]/bv*[height <=? 480]"  --audio-multistreams --retries infinite --fragment-retries infinite --hls-prefer-native --merge-output-format mkv --write-subs 2>&1 | tee outfile
```

# 📙 Update
```
docker pull ghcr.io/darodi/docker-youtube-dl-vtt-to-srt:latest
```

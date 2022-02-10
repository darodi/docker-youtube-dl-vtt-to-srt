# docker-youtube-dl-vtt-to-srt

## Introduction

this docker image uses the base docker image from   
https://github.com/mikenye/docker-youtube-dl

so this docker image adds the capability to convert subtitles downloaded from vtt fo srt  
see https://github.com/darodi/vtt-to-srt

## 💾 Installation / build

```
docker build -t darodi/docker-youtube-dl-vtt-to-srt:latest .
```
or `build.sh`

# 📙 Usage

same as https://github.com/mikenye/docker-youtube-dl

but the image name is `darodi/docker-youtube-dl-vtt-to-srt` instead of `mikenye/youtube-dl`

example: `download_list.sh`

```
#!/bin/bash
docker run --rm -i -e PGID=1000 -e PUID=1000 -e UPDATE_YOUTUBE_DL=true -v "$(pwd)":/workdir:rw darodi/docker-youtube-dl-vtt-to-srt:latest -a list -f "bv*[height <=? 480]+ba[language*=en]/bv*[height <=? 480]"  --audio-multistreams --retries infinite --fragment-retries infinite --hls-prefer-native --merge-output-format mkv --write-subs 2>&1 | tee outfile
```
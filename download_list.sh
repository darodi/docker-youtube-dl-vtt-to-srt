#!/bin/bash

docker run --rm -i -e PGID=1000 -e PUID=1000 -e UPDATE_YOUTUBE_DL=true -v "$(pwd)":/workdir:rw darodi/docker-youtube-dl-vtt-to-srt:latest -a list -f "bv*[height <=? 480]+ba[language*=en]/bv*[height <=? 480]"  --audio-multistreams --retries infinite --fragment-retries infinite --hls-prefer-native --merge-output-format mkv --write-subs 2>&1 | tee outfile


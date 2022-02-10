FROM mikenye/youtube-dl:latest

RUN set -x && \
    # Install yt-dlp via pip
    python3 -m pip install --no-cache-dir --force-reinstall https://github.com/darodi/vtt-to-srt/archive/refs/heads/master.zip && \
	# after download, convert vtt files to srt files 
    echo setpriv --reuid dockeruser --regid dockeruser --keep-groups  vtt_to_srt >> /init
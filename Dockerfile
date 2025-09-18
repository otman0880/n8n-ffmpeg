FROM n8nio/n8n:latest

USER root

# Install ffmpeg, python3, and pip
RUN apk add --no-cache ffmpeg python3 py3-pip && \
    pip3 install --no-cache-dir --break-system-packages yt-dlp

USER node

EXPOSE 5678
CMD ["n8n"]

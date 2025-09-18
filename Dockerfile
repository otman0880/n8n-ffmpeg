# Start from n8n official image
FROM n8nio/n8n:latest

# Install ffmpeg, python3, pip, and yt-dlp
RUN apk add --no-cache ffmpeg python3 py3-pip && \
    pip3 install --no-cache-dir yt-dlp

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]

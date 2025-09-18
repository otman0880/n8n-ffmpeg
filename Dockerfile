# Start from official n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install ffmpeg, python3, pip, and yt-dlp
RUN apk add --no-cache ffmpeg python3 py3-pip && \
    pip3 install --no-cache-dir yt-dlp

# Switch back to default n8n user
USER node

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]

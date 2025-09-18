FROM n8nio/n8n:latest

USER root

# Install yt-dlp via npm wrapper
RUN npm install -g yt-dlp-exec

USER node

FROM n8nio/n8n:latest

USER root

# Install ffmpeg + yt-dlp directly from Alpine packages
RUN apk add --no-cache ffmpeg yt-dlp

USER node

EXPOSE 5678
CMD ["n8n"]

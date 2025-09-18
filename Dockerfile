FROM n8nio/n8n:latest

USER root

# Install ffmpeg + yt-dlp from Alpine packages
RUN apk add --no-cache ffmpeg yt-dlp

# Switch back to n8n user
USER node

# Restore entrypoint so Render can start n8n
ENTRYPOINT ["tini", "--", "n8n"]

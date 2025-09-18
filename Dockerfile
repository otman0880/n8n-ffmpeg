# Use the official n8n image as base
FROM n8nio/n8n:latest

# Install ffmpeg, Python, pip and yt-dlp
RUN apt-get update && \
    apt-get install -y ffmpeg python3 python3-pip && \
    pip3 install --no-cache-dir yt-dlp && \
    rm -rf /var/lib/apt/lists/*

# Expose n8n port
EXPOSE 5678

# Run n8n
CMD ["n8n"]

# n8n-ffmpeg

本專案旨在自動化構建包含 FFmpeg 的 n8n Docker 映像檔，並將其推送到 Docker Hub。當 n8n 官方發布新版本時，此專案將自動檢測並構建對應的新版本。

## 專案結構

```
n8n-ffmpeg/
├── .github/
│   └── workflows/
│       ├── check-updates.yml
│       └── build-and-push.yml
├── Dockerfile
├── docker-compose.yml
├── scripts/
│   ├── check-version.sh
└── README.md
```

## 功能

- **自動版本檢查**：定期檢查 n8n 官方 Docker Hub 是否有新版本發布。
- **自動構建**：如果檢測到新版本，自動觸發 GitHub Actions 工作流程進行構建。
- **FFmpeg 整合**：在官方 n8n 映像檔的基礎上安裝 FFmpeg。
- **多平台支援**：構建支持 `linux/amd64` 和 `linux/arm64` 平台的映像檔。
- **自動推送**：將構建完成的映像檔推送到指定的 Docker Hub Repository。
- **版本標籤**：為每個構建的映像檔打上版本號標籤和 `latest` 標籤。

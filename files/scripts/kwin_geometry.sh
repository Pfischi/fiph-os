#!/usr/bin/env bash
set -euo pipefail

DEST="/usr/share/kwin/scripts"
API_URL="https://api.github.com/repos/peterfajdiga/kwin4_effect_geometry_change/releases/latest"
URL=$(curl -sL "$API_URL" -H "Authorization: Bearer $GITHUB_TOKEN" | grep '"browser_download_url":' | grep -o 'https://[^"]*')

echo "Download $URL"
curl -sSL "$URL" -o "release.tar.gz" -H "Authorization: Bearer $GITHUB_TOKEN"
mkdir -p "$DEST"
tar -xvf "release.tar.gz" -C "$DEST"

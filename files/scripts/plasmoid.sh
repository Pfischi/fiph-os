#!/usr/bin/env bash
set -euo pipefail

# Download from https://github.com/luisbocanegra/plasma-panel-colorizer
# Get .plasmoid file
# Install with kpackagetool6, "--type=Plasma/Applet" needed

echo "Create temp dir"
TMPDIR=$(mktemp -d)
pushd "$TMPDIR"

echo "Get latest version"
curl -sSLf "https://api.github.com/repos/luisbocanegra/plasma-panel-colorizer/releases/latest" -o release.json
NAME=$(jq -r '.assets[0].name' "./release.json")
DOWNLOAD_URL=$(jq -r '.assets[0].browser_download_url' "./release.json")

echo "Download latest version"
curl -sSLf -O "$DOWNLOAD_URL"

echo "Install $NAME"
kpackagetool6 --type=Plasma/Applet --install plasmoid-panel-colorizer-v5.0.1.plasmoid  --global

echo "Delete temp dir"
pushd
rm -rf "$TMPDIR"
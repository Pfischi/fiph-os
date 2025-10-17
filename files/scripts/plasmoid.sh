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
NAME_PKG=$(jq -r '.assets[0].name' "./release.json")
DOWNLOAD_URL=$(jq -r '.assets[0].browser_download_url' "./release.json")

echo "Download $DOWNLOAD_URL"
curl -sSLf -O "$DOWNLOAD_URL"

echo "Install $NAME_PKG"
kpackagetool6 --type=Plasma/Applet --install "$NAME_PKG" --global

echo "Delete temp dir"
pushd
rm -rf "$TMPDIR"
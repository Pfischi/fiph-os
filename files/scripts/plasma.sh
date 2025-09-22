#!/usr/bin/env bash
set -euo pipefail

# curl -sL "https://api.github.com/repos/peterfajdiga/kwin4_effect_geometry_change/releases/latest" | grep "browser_download_url" | cut -d : -f 2,3 | tr -d \" | wget -qi -
# tarball funktioniert nicht, weil damit kein Release heruntergeladen wird sondern git repo

REPO="peterfajdiga/kwin4_effect_geometry_change"
DEST="/usr/share/kwin/scripts"
API_URL="https://api.github.com/repos/$REPO/releases/latest"

# Create a temporary work directory
TMPDIR=$(mktemp -d)
echo "$TMPDIR"

cleanup() {
  rm -rf "$TMPDIR"
}
trap cleanup EXIT

echo "Fetching latest release metadata..."
URL=$(curl -sL "$API_URL" \
  | grep '"browser_download_url":' \
  | cut -d : -f 2,3 \
  | tr -d \")

if [[ -z "$URL" ]]; then
  echo "Error: could not determine tarball_url." >&2
  exit 1
fi

echo "Downloading release from $URL..."
curl -sSL $URL -o "$TMPDIR/release.tar.gz"

echo "Ensuring destination directory exists: $DEST"
mkdir -p $DEST

echo "Extracting contents to $DEST (stripping leading folder)..."
tar -zxvf "$TMPDIR/release.tar.gz" -C $DEST

echo "Done. Geometry-change effect is now installed in $DEST."
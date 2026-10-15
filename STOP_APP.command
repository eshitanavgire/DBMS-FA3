#!/bin/bash
cd "$(dirname "$0")"
docker compose down
echo "TextileFlow stopped. Your database data is preserved."
read -r -p "Press Enter to close..."

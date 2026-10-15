#!/bin/bash
set -e
cd "$(dirname "$0")"
echo "=============================================="
echo " TextileFlow - Textile Manufacturing System"
echo "=============================================="
if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is not installed. Install Docker Desktop first: https://www.docker.com/products/docker-desktop/"
  read -r -p "Press Enter to close..."
  exit 1
fi
if ! docker info >/dev/null 2>&1; then
  echo "Docker is installed but Docker Desktop is not running."
  echo "Open Docker Desktop, wait until it says it is running, then run this file again."
  read -r -p "Press Enter to close..."
  exit 1
fi
echo "Starting the app. First run can take a few minutes while images download..."
docker compose up --build -d
echo ""
echo "App is starting. Open:"
echo "  Frontend:       http://localhost:5173"
echo "  API docs:       http://localhost:8000/docs"
echo "  API health:     http://localhost:8000/api/health"
echo "  Database viewer:http://localhost:8081 (admin / admin123)"
echo ""
echo "To stop: run STOP_APP.command or use: docker compose down"
read -r -p "Press Enter to close..."

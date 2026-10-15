@echo off
cd /d "%~dp0"
docker compose down
echo TextileFlow stopped. Your database data is preserved.
pause

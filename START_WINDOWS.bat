@echo off
cd /d "%~dp0"
title TextileFlow - Textile Manufacturing System
echo ==============================================
echo  TextileFlow - Textile Manufacturing System
echo ==============================================
where docker >nul 2>nul
if errorlevel 1 (
  echo Docker is not installed. Install Docker Desktop first:
  echo https://www.docker.com/products/docker-desktop/
  pause
  exit /b 1
)
docker info >nul 2>nul
if errorlevel 1 (
  echo Docker is installed but Docker Desktop is not running.
  echo Open Docker Desktop, wait until it is running, then run this file again.
  pause
  exit /b 1
)
echo Starting the app. First run can take a few minutes while images download...
docker compose up --build -d
if errorlevel 1 (
  echo Startup failed. Check Docker Desktop and ports 5173, 8000, 8081, and 27017.
  pause
  exit /b 1
)
echo.
echo App is starting. Open:
echo   Frontend:        http://localhost:5173
echo   API docs:        http://localhost:8000/docs
echo   API health:      http://localhost:8000/api/health
echo   Database viewer: http://localhost:8081  (admin / admin123)
echo.
echo To stop: run STOP_APP.bat
pause

# TextileFlow — Textile Manufacturing Management System

A full-stack demo app for managing textile manufacturing operations. Stack: **React + Vite**, **FastAPI**, and **MongoDB**, with Mongo Express for viewing database records.

## Fastest way to run (recommended)

### 1. Install Docker Desktop
- macOS / Windows: https://www.docker.com/products/docker-desktop/
- Open Docker Desktop and wait until it says Docker is running.

### 2. Extract this ZIP
Extract `textile_manufacturing_management.zip`. Open the extracted `textile_manufacturing_management` folder.

### 3. Start it
- **Windows:** double-click `START_WINDOWS.bat`
- **Mac:** right-click `START_MAC_LINUX.command` → Open (first time may require confirmation)
- **Linux:** run `./START_MAC_LINUX.command` from a terminal

The first start downloads container images and may take a few minutes. Keep the computer connected to the internet. The launcher starts the services in the background.

### 4. Open the app
- **Main app:** http://localhost:5173
- **API documentation:** http://localhost:8000/docs
- **API health:** http://localhost:8000/api/health
- **MongoDB viewer:** http://localhost:8081 (username `admin`, password `admin123`)

Give the frontend 10–30 seconds to load on the first startup. Add a record in the UI, refresh, and verify it remains saved.

### Stop the app
- Windows: double-click `STOP_APP.bat`
- Mac/Linux: double-click `STOP_APP.command` (or run `docker compose down` in this folder)

Your data is preserved when you stop the app. To permanently delete the demo database and all saved records, run `docker compose down -v`.

## What is included
- Dashboard with operational KPI cards and charts
- Vendors and raw-material inventory
- Production batches
- Employees and shifts
- Finished-goods warehouses
- Distributors and retailers
- REST API and interactive Swagger documentation
- Mongo Express database viewer
- Sample records seeded automatically when the database is empty

## Troubleshooting
- **Docker not running:** launch Docker Desktop and wait for it to finish starting.
- **A port is already in use:** stop other apps using ports `5173`, `8000`, `8081`, or `27017`, then retry.
- **App seems unavailable:** in this folder, run `docker compose ps` and `docker compose logs --tail=100`.
- **Restart services:** run `docker compose up --build -d`.
- **Reset demo data:** only if you want to erase all stored data, run `docker compose down -v`, then `START_WINDOWS.bat` or `START_MAC_LINUX.command` again.

## Technical architecture
Browser → React/Vite frontend → FastAPI REST API → MongoDB. The frontend sends API requests; the backend validates and stores records in MongoDB. Mongo Express is an optional browser-based database viewer.

## Suggested project demo
1. Show the dashboard KPIs.
2. Add a vendor or material from the frontend.
3. Add a production batch.
4. Open Mongo Express and show the corresponding collection.
5. Refresh the frontend to demonstrate persistence.
6. Open Swagger at `/docs` to show the REST endpoints.

> This is a classroom/demo project, not a production ERP. The Mongo Express credentials are intentionally simple for local demo use only. Do not expose these services to the public internet.

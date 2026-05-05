# Flask Multi-Stage Docker Build

This project demonstrates how to use Docker multi-stage builds to create a smaller and more secure Python Flask container.

---

## Overview

The application is a simple Flask API containerized using a multi-stage Docker build.

The build process separates dependency installation from the runtime environment to reduce image size and improve security.

---

## Project Structure
```
.
├── app/
│ └── app.py
├── requirements.txt
├── Dockerfile
└── .dockerignore
```


---

## How It Works

### Stage 1: Builder
- Uses full Python image
- Installs dependencies into a custom directory

### Stage 2: Runtime
- Uses lightweight `python:3.11-slim`
- Copies only required dependencies
- Runs application with Gunicorn

---

## Build Image

```bash
docker build -t flask-multistage .

## Run Container
```bash
docker run -d -p 5000:5000 flask-multistage

## Access Application
```bash
http://localhost:5000
http://localhost:5000/health
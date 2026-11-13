#!/bin/bash
set -e

HOST_PORT="${HOST_PORT:-8000}"

echo "=== Starting local deployment ==="

echo "Building Docker image..."
docker build -t devops25-app .

echo "Removing previous exercise container if it exists..."
docker rm -f devops25-app 2>/dev/null || true

echo "Starting application on port ${HOST_PORT}..."
docker run -d \
  --name devops25-app \
  -p "127.0.0.1:${HOST_PORT}:8000" \
  devops25-app

echo "=== Deployment started ==="

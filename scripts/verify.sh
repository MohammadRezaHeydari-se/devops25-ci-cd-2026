#!/bin/bash
set -e

HOST_PORT="${HOST_PORT:-8000}"

echo "=== Verifying deployment ==="

for i in {1..10}; do
  if curl --fail --silent "http://127.0.0.1:${HOST_PORT}/health"; then
    echo
    echo "Deployment verified successfully"
    exit 0
  fi

  echo "Waiting for application..."
  sleep 2
done

echo "Deployment verification failed"
exit 1

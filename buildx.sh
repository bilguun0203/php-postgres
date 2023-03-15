#!/bin/sh
docker buildx build --push --platform linux/arm64,linux/amd64 -t ghcr.io/bilguun0203/php-pgmongo:latest .

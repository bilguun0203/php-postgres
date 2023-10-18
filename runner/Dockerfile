FROM git.ingenius.dev/ingenius/php-postgres:latest-debian

RUN apt update && apt install -y \
    build-essential \
    ca-certificates \
    curl \
    git \
    git-lfs \
    gnupg \
    nodejs \
    npm \
    python3-pip \
    python3-venv \
    unzip \
    wget \
    && rm -rf /var/lib/apt/lists/*

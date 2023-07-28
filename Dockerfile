FROM python:3.11-slim-bookworm

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/* \
    && pip install pre-commit==3.*

LABEL org.opencontainers.image.source=https://github.com/salcatroppa/pre-commit-docker
LABEL org.opencontainers.image.description="A pre-commit Docker image."

FROM python:3.11-slim-bookworm

ENV VIRTUAL_ENV=/opt/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/* \
    && python3 -m venv $VIRTUAL_ENV \
    && pip install --upgrade --no-cache-dir pip \
    && pip install --no-cache-dir pre-commit==3.*

LABEL org.opencontainers.image.source=https://github.com/salcatroppa/pre-commit-docker
LABEL org.opencontainers.image.description="A pre-commit Docker image."

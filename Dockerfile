FROM python:3-alpine

RUN apk add git &&\
    pip install pre-commit==3.*

LABEL org.opencontainers.image.source=https://github.com/salcatroppa/pre-commit-docker
LABEL org.opencontainers.image.description="A pre-commit Docker image."

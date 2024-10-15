# syntax=docker/dockerfile:1.2

# BUILDPLATFORM is an automatic platform ARG enabled by Docker BuildKit.
# Represents the platform where the build is happening, do not mix with
# TARGETARCH
FROM docker.io/library/alpine:3.20.3
RUN apk add --no-cache curl iputils bind-tools tcpdump
ENTRYPOINT ["/usr/bin/curl"]

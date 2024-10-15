# syntax=docker/dockerfile:1.2

# BUILDPLATFORM is an automatic platform ARG enabled by Docker BuildKit.
# Represents the platform where the build is happening, do not mix with
# TARGETARCH
FROM docker.io/library/alpine:3.20.3@sha256:1088f9ab0bc29dceb1d9afe5b83b7900d30ee4e852d00eaecd5cf5c4fe4a3a5e
RUN apk add --no-cache curl iputils bind-tools tcpdump
ENTRYPOINT ["/usr/bin/curl"]

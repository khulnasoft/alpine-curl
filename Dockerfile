# syntax=docker/dockerfile:1.2

# BUILDPLATFORM is an automatic platform ARG enabled by Docker BuildKit.
# Represents the platform where the build is happening, do not mix with
# TARGETARCH
FROM docker.io/library/alpine:3.20.3@sha256:beefdbd8a1da6d2915566fde36db9db0b524eb737fc57cd1367effd16dc0d06d AS builder
RUN apk add --no-cache curl iputils bind-tools tcpdump

FROM docker.io/library/alpine:3.20.3@sha256:beefdbd8a1da6d2915566fde36db9db0b524eb737fc57cd1367effd16dc0d06d
COPY --from=builder /usr/bin/curl /usr/bin/curl
COPY --from=builder /usr/bin/ping /usr/bin/ping
COPY --from=builder /usr/bin/dig /usr/bin/dig
COPY --from=builder /usr/sbin/tcpdump /usr/sbin/tcpdump
ENTRYPOINT ["/usr/bin/curl"]

# Runtime image
# Logic adapted from official Dockerfile
# https://github.com/sonatype/docker-nexus3/blob/master/Dockerfile
FROM docker.io/arm64v8/alpine:3.13

# Needed for dockerhub automated arm64 builds
#COPY qemu-arm-static /usr/bin

# Image metadata
# git commit
LABEL org.opencontainers.image.revision="-"
LABEL org.opencontainers.image.source="https://github.com/jkaldon/arm64v8-openjdk/tree/master"

# Install Java 8 and wget
RUN apk add --no-cache \
             openssl \
             openjdk11-jdk && \
    update-ca-certificates 
RUN find / -name "cacerts"


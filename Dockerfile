# FROM bluenviron/mediamtx:latest-ffmpeg
# FROM bluenviron/mediamtx:latest
# COPY mediamtx.yml /mediamtx.yml
FROM alpine:3.21

RUN apk add --no-cache curl ca-certificates

COPY --from=bluenviron/mediamtx:latest /mediamtx /mediamtx
COPY mediamtx.yml /mediamtx.yml

ENTRYPOINT ["/mediamtx", "/mediamtx.yml"]

FROM alpine:latest

RUN apk add --quiet --no-cache ca-certificates && apk add --virtual build-deps --quiet --no-cache ca-certificates curl && \
	curl -sSL "https://github.com/rancher/cli/releases/download/v2.2.0/rancher-linux-amd64-v2.2.0.tar.gz" | tar -xzp -C /usr/local/bin/ --strip-components=2 && \
	apk del build-deps && rm -rf /var/cache/*

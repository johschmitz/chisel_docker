# Grab the latest alpine image
FROM alpine:latest
# Install chisel
RUN apk add --no-cache curl && \
    mkdir -p /bin/ && \
    curl -sSL https://github.com/jpillora/chisel/releases/download/1.3.1/chisel_linux_amd64.gz | gzip -d - > /bin/chisel && \
    chmod +x /bin/chisel
# Run the image as a non-root user
RUN adduser -D chisel
USER chisel
CMD chisel server --port ${PORT} --auth ${CHISEL_AUTH} --socks5 --reverse --proxy http://example.com

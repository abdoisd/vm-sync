FROM alpine:latest
WORKDIR /app
COPY config.txt .
COPY .env .
RUN apk add --no-cache gettext
CMD ["sh", "-c", "envsubst < config.txt > config_processed.txt && tail -f /dev/null"]

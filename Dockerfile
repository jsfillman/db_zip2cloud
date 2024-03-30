FROM alpine:latest

# Update and install necessary packages
RUN apk update && \
    apk add p7zip rclone

# Create config directory
RUN mkdir -p /root/.config/rclone/

# Copy necessary files
COPY rclone.conf /root/.config/rclone/rclone.conf
COPY app/ /app/

WORKDIR /app

ENTRYPOINT /app/zip2cloud
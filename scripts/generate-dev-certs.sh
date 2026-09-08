#!/bin/bash

apt install libnss3-tools
curl -JLO "https://dl.filippo.io/mkcert/latest?for=linux/amd64"
chmod +x mkcert-v*-linux-amd64
cp mkcert-v*-linux-amd64 /usr/local/bin/mkcert

mkcert "$DOMAIN" localhost 127.0.0.1
mkdir -p "$CERT_DIR"
mv "$DOMAIN"+2-key.pem "$DOMAIN"+2.pem "$CERT_DIR"
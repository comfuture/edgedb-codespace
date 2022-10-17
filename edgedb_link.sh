#!/bin/bash
# try link to edgedb docker instance as name "dev"
echo edgedb | edgedb instance link \
  --overwrite \
  --dsn edgedb://edgedb:edgedb@edgedb:5656 \
  --password-from-stdin \
  --non-interactive \
  --trust-tls-cert \
  dev

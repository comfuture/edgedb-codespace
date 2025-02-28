#!/bin/bash
# try link to edgedb docker instance as name "dev"

# XXX: wait until hostname `edgedb` is available
MAX_TRIES=5
COUNT=0

function gel_link() {
  gel instance link \
    --overwrite \
    --dsn gel://geldata:geldata@geldata:5656/geldata \
    --no-password \
    --non-interactive \
    --trust-tls-cert \
    dev
}

while true
do
  if gel_link; then
    echo "gel instance successfully linked"
    exit 0
  else
    COUNT=$((COUNT+1))
    if [ $COUNT -gt $MAX_TRIES ]; then
      echo "Max tries reached. Exiting."
      exit 1
    fi
    echo "edgedb link failed. Retrying in 5 seconds..."
    sleep 5
  fi
done

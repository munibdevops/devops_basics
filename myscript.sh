#!/bin/bash

SOURCE="/home/devops_basics"
DEST="/tmp/backup_$(date +%Y$m%d_%H%M%S)"

echo "Starting backup from $SOURCE to $DEST..."
mkdir -p "$DEST"
cp -r "$SOURCE" "$DEST"

if [ $? -eq 0 ]; then
  echo "Backup completed successfully!"
else
  echo "Backup failed!"
fi


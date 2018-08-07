#!/bin/bash

set -e

echo "Job started: $(date)"

DATE=$(date +%Y%m%d_%H%M%S)
FILE="/backups/backup-$DATE.tar.gz"

mkdir -p dump
mongodump
tar -zcvf $FILE dump/
rm -rf dump/

echo "Job finished: $(date)"
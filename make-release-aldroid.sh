#!/usr/bin/env bash
if [ -z $1 ]; then
    echo "No version provided, please provide version in format: x.y.z"
    exit 1
fi

ARCHIVE_NAME="aldroid-v${1}.tar"
tar -cf $ARCHIVE_NAME aldroid aldroid-running-app README.md
gzip $ARCHIVE_NAME

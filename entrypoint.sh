#!/bin/sh

set -e

if [ -z "$FIREBASE_TOKEN" ]; then
    echo "FIREBASE_TOKEN is required to run commands with the firebase cli"
    exit 126
fi

if [ -n "$APP" ]; then
    firebase use --add $APP
fi

sh -c "firebase $*"
#!/bin/sh

set -eu
if [ $# -ne 2 ]; then
  echo "Missing parameters"
  echo "  <HOST> <PORT>"
  exit 1
fi

HOST=$1
PORT=$2

echo "Proxing to $HOST:$PORT"
exec socat TCP-LISTEN:"$PORT",fork TCP4:"$HOST":"$PORT"


#!/bin/sh

set -eu

HOST=$1

if [ $# -eq 2 ]; then
  FROM=$2
  TO=$2
elif [ $# -eq 3 ]; then
  FROM=$2
  TO=$3
else
  echo "Missing parameters"
  echo "  <HOST> <PORT>"
  echo "  <HOST> <FROM_PORT> <TO_PORT>"
  exit 1
fi

echo ":$FROM => $HOST:$TO"
exec socat TCP-LISTEN:"$FROM",fork TCP4:"$HOST":"$TO"

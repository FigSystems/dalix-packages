#!/bin/bash

for f in repo/*.dpt; do
  if [ -f "$f" ]; then
    filename="$(basename "$f")"
    dir="repo/$(echo "${filename:0:1}" | tr '[:upper:]' '[:lower:]')"
    mkdir -p "$dir"
    mv "$f" "$dir/"
  fi
done

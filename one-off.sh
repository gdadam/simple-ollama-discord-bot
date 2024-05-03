#!/usr/bin/env bash
input='{"model": "dolphin-llama3:8b","prompt": "'$*'","stream": false}'
get=$(curl http://localhost:11434/api/generate -d "${input}" --silent)
echo "${get}" | jq -r '.response'

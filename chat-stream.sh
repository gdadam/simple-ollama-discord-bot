#!/usr/bin/env bash
newmessage='{"role": "user", "content": "'$*'"}'
[ -s messages.txt ] && newmessage=", "${newmessage}
echo ${newmessage} >> messages.txt
input='{"model": "dolphin-llama3:8b","messages": ['$(<messages.txt)'],"stream": false}'
get=$(curl http://localhost:11434/api/chat -d "${input}" --silent)
outmessage=$(echo "${get}" | jq '.message' | tr -d '\n')
echo ", "${outmessage} >> messages.txt
echo "${get}" | jq -r '.message.content'

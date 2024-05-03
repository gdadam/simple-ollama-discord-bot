# simple-ollama-discord-bot
Run bot.py to start it, put in your bot's token, make sure it has message content intent permission enabled
It replies to all messages it sees. I'll be changing this in future versions.

I've got two options for shell scripts that interact with ollama here. They're shell scripts because I initially wrote them just for personal use through the command line, but figured they'd be easily useful here too
one-off.sh just gives the prompt and returns an answer - no memory of chat history
chat-stream.sh saves in a text file (messages.txt) the prompts and responses, so it has chat history. This will get weird if the bot has access to multiple channels. Again, I will be changing this in the future.

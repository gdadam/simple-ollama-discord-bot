import hikari
import os
import subprocess

bot = hikari.GatewayBot(token="", intents=(hikari.Intents.ALL_MESSAGES|hikari.Intents.MESSAGE_CONTENT))

@bot.listen(hikari.GuildMessageCreateEvent)
async def message(event):
    if not event.is_human:
        return
    print(event.message.content)
    result = subprocess.check_output("./chat-stream.sh " + event.message.content, shell=True)
    await event.message.respond(result.decode("utf-8"), reply=True)

bot.run()

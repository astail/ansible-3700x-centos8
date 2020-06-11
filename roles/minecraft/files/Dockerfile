FROM node:12

RUN npm install -g minecord

ENV enable="chat,login,whitelist,server" \
    minecraftLog="/var/log/minecraft/latest.log" \
    minecraftRconHost="minecraft" \
    minecraftRconPort="25575" \
    minecraftRconPassword="rconpass" \
    discordBotToken="dtoken" \
    discordChannel="12345678"

CMD ["sh", "-c", "/usr/local/bin/minecord --enable \"$enable\" --minecraft-log $minecraftLog --minecraft-rcon-host $minecraftRconHost --minecraft-rcon-port $minecraftRconPort --minecraft-rcon-password $minecraftRconPassword --discord-bot-token $discordBotToken --discord-channel $discordChannel"]

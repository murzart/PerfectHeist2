###########################################################
# Dockerfile that builds a Perfect Heist 2 Gameserver
###########################################################
FROM cm2network/steamcmd:root

ENV STEAMAPPID 1964150
ENV STEAMAPP PerfectHeist2Server
ENV STEAMAPPDIR "${HOMEDIR}/${STEAMAPP}-dedicated"
ENV WORKSHOPID 1521580

ENV SERVER_NAME="MyServer" \
    BOTS=2 \
    PASSWORD_ACTIVE=false \
    PASSWORD="" \
    MAP="NewYorkCity" \
    PORT=7777 \
    PORT_STEAM_BROWSER=27017 \
    INFINITE_COP_RESPAWNS=false \
    MINIMUM_STOLEN_AMOUNT=30000 \
    COP_PERCENTAGE=30 \
    IGNORE_TEAM_LIMITS=false \
    COMBATFIRE_PROTECTED=false \
    NO_RANDOM_KILLS=false \
    COP_RESPAWN_AFTER_NPC_KILL=false \
    COP_NPC_KILL_REWARD=0 \
    OVERTIME=true \
    OVERTIME_DURATION=60 \
    ROUNDTIME=300 \
    ROBBER_RESPAWNS=0 \
    COPS_CANT_BE_FIRED=false \
    STEAM_TICKETS=false \
    ALLOW_TP=false \
    SPRINTING_STAMINA=false \
    NO_SPRINTING=false \
    NO_TEAM_DAMAGE=false \
    SERVER_OWNER_ID= \
    MAX_PLAYERS=16 \
    PICKTIME=20 \
    SPECTATORS=false \
    WORKSHOP_MAP_ID=

USER ${USER}

WORKDIR ${HOMEDIR}

ADD run.sh .

CMD ["bash", "run.sh"] 

EXPOSE 7777/udp \
    27017/udp

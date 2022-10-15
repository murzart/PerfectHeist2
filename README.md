# PerfectHeist2


# How to use this image

## Hosting a simple game server
Running on the *host* interface (recommended):<br/>
```console
$ docker run -d --net=host -v /home/steam/PerfectHeist2Server-dedicated/ --name=ph2-dedicated ghcr.io/murzart/perfectheist2
```

Running using a bind mount for data persistence on container recreation:
```console
$ mkdir -p $(pwd)/ph2-data
$ chmod 777 $(pwd)/ph2-data # Makes sure the directory is writeable by the unprivileged container user
$ docker run -d --net=host -v $(pwd)/ph2-data:/home/steam/PerfectHeist2Server-dedicated/ --name=ph2-dedicated ghcr.io/murzart/perfectheist2
```

Running multiple instances (iterate PORT, QUERYPORT and RCONPORT):<br/>
```console
$ docker run -d --net=host -v /home/steam/PerfectHeist2Server-dedicated/ -e PORT=7787 -e PORT_STEAM_BROWSER=27027 --name=ph2-dedicated ghcr.io/murzart/perfectheist2
```

## Hosting a simple game server with custom name and password
Running on the *host* interface (recommended):<br/>
```console
$ docker run -d --net=host -e SERVER_NAME="MyCustomServerName" -e PASSWORD_ACTIVE=true -e PASSWORD="MySecurePassword" -e MAP="NewYorkCity" -v /home/steam/PerfectHeist2Server-dedicated/ --name=ph2-dedicated ghcr.io/murzart/perfectheist2
```


### docker-compose.yml example
```dockerfile
version: '3.9'

services:
  ph2:
    image: ghcr.io/murzart/perfectheist2
    container_name: ph2
    restart: unless-stopped
    network_mode: "host"
    volumes:
      - /storage/ph2/:/home/steam/PerfectHeist2Server-dedicated/
    environment:
      - PORT=7787
      - PORT_STEAM_BROWSER=27027
```

# Configuration
## Environment Variables
Feel free to overwrite these environment variables, using -e (--env):
```dockerfile
SERVER_NAME="MyServer"
BOTS=2
PASSWORD_ACTIVE=false
PASSWORD=""
MAP="NewYorkCity"
PORT=7777
PORT_STEAM_BROWSER=27017
INFINITE_COP_RESPAWNS=false
MINIMUM_STOLEN_AMOUNT=30000
COP_PERCENTAGE=30
IGNORE_TEAM_LIMITS=false
COMBATFIRE_PROTECTED=false
NO_RANDOM_KILLS=false
COP_RESPAWN_AFTER_NPC_KILL=false
COP_NPC_KILL_REWARD=0
OVERTIME=true
OVERTIME_DURATION=60
ROUNDTIME=300
ROBBER_RESPAWNS=0
COPS_CANT_BE_FIRED=false
STEAM_TICKETS=false
ALLOW_TP=false
SPRINTING_STAMINA=false
NO_SPRINTING=false
NO_TEAM_DAMAGE=false
SERVER_OWNER_ID=
MAX_PLAYERS=16
PICKTIME=20
SPECTATORS=false
```

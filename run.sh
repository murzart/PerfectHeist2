#!/bin/bash

bash "${STEAMCMDDIR}/steamcmd.sh" +force_install_dir "${STEAMAPPDIR}" \
				+login anonymous \
				+app_update "${STEAMAPPID}" \
				+quit


bash "${STEAMAPPDIR}/PerfectHeist2Server.sh" \
	${MAP} \
	-Port=${PORT} \
	-QueryPort=${PORT_STEAM_BROWSER} \
	-ini:Game:[Server]:name=${SERVER_NAME} \
	-ini:Game:[Server]:pw=${PASSWORD_ACTIVE} \
	-ini:Game:[Server]:pws=${PASSWORD} \
	-ini:Game:[Advanced]:infiniteCopRespawns=${INFINITE_COP_RESPAWNS} \
	-ini:Game:[Advanced]:minimumStolenAmount=${MINIMUM_STOLEN_AMOUNT} \
	-ini:Game:[Advanced]:copPercentage=${COP_PERCENTAGE} \
	-ini:Game:[Advanced]:ignoreTeamLimits=${IGNORE_TEAM_LIMITS} \
	-ini:Game:[Advanced]:combatfireProtected=${COMBATFIRE_PROTECTED} \
	-ini:Game:[Advanced]:noRandomKills=${NO_RANDOM_KILLS} \
	-ini:Game:[Advanced]:copRespawnAfterNpcKill=${COP_RESPAWN_AFTER_NPC_KILL} \
	-ini:Game:[Advanced]:CopNpcKillReward=${COP_NPC_KILL_REWARD} \
	-ini:Game:[Advanced]:overtime=${OVERTIME} \
	-ini:Game:[Advanced]:overtimeduration=${OVERTIME_DURATION} \
	-ini:Game:[Advanced]:roundtime=${ROUNDTIME} \
	-ini:Game:[Advanced]:RobberRespawns=${ROBBER_RESPAWNS} \
	-ini:Game:[Advanced]:copsCantBeFired=${COPS_CANT_BE_FIRED} \
	-ini:Game:[Advanced]:SteamTickets=${STEAM_TICKETS} \
	-ini:Game:[Advanced]:allowTP=${ALLOW_TP} \
	-ini:Game:[Advanced]:sprintingStamina=${SPRINTING_STAMINA} \
	-ini:Game:[Advanced]:noSprinting=${NO_SPRINTING} \
	-ini:Game:[Advanced]:NoTeamDamage=${NO_TEAM_DAMAGE} \
	-ini:Game:[Advanced]:ServerOwnerID=${SERVER_OWNER_ID} \
	-ini:Game:[Advanced]:MaxPlayers=${MAX_PLAYERS} \
	-ini:Game:[Advanced]:picktime=${PICKTIME} \
	-ini:Game:[Advanced]:spectators=${SPECTATORS}


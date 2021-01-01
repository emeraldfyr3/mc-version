#!/bin/bash

set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

DATAVERSION_CSV_FILE='dataversion.csv'
DATAVERSION_FUNC_FILE='../data/mcversion/functions/dataversion.mcfunction'

# Generate dataversion.mcfunction from dataversion.csv

echo "\
##### GENERATED FILE -- DO NOT EDIT #####

# Determine the version from the player's DataVersion tag
# Thanks to Evtema3 for pointing this out to me

execute store result score #dataversion mcversion run data get entity @p DataVersion

$(
  minDataVersion=
  maxDataVersion=
  prevMcVersion=

  while read line
  do
    dataVersion="$(cut -d ',' -f 2 <<< "$line")"
    mcVersion="$(cut -d ',' -f 3-5 <<< "$line" | sed 's/,/,#/g;s/$/,/;s/#\([0-9]\),/#0\1,/g;s/,#*//g')"

    if [ "$prevMcVersion" ] && [ ! "$prevMcVersion" = "$mcVersion" ]
    then
      echo "execute if score #dataversion mcversion matches ${minDataVersion}..${maxDataVersion} run scoreboard players set #version mcversion ${prevMcVersion}"

      minDataVersion="$dataVersion"
    fi

    [ "$minDataVersion" ] || minDataVersion="$dataVersion"
    maxDataVersion="$dataVersion"
    prevMcVersion="$mcVersion"
  done <<< "$(tail -n +2 "$DATAVERSION_CSV_FILE" | tac)"

  echo "execute if score #dataversion mcversion matches ${minDataVersion}..${maxDataVersion} run scoreboard players set #version mcversion ${prevMcVersion}"
)

scoreboard players set #100 mcversion 100

scoreboard players operation patch mcversion = #version mcversion
scoreboard players operation patch mcversion %= #100 mcversion

execute store result score minor mcversion run scoreboard players operation #version mcversion /= #100 mcversion
scoreboard players operation minor mcversion %= #100 mcversion

execute store result score major mcversion run scoreboard players operation #version mcversion /= #100 mcversion" > "$DATAVERSION_FUNC_FILE"

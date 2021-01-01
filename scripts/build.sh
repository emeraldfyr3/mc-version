#!/bin/bash

set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

DATAVERSION_CSV_FILE='dataversion.csv'
DATAVERSION_FUNC_FILE='../data/mcversion/functions/dataversion.mcfunction'

# Generate dataversion.mcfunction from dataversion.csv

echo 'execute store result score #dataversion mcversion run data get entity @p DataVersion
' > "$DATAVERSION_FUNC_FILE"

sed '
  1d
  s/,/,#/g
  s/$/,/
  s/#\([0-9]\),/#0\1,/g
  s/,#/,/g
  s/^[^,]*,\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),/execute if score #dataversion mcversion matches \1 run scoreboard players set #version mcversion \2\3\4/
  s/ 0*\([0-9][0-9]*\)/ \1/g
' "$DATAVERSION_CSV_FILE" | tac >> "$DATAVERSION_FUNC_FILE"

echo '
scoreboard players set #100 mcversion 100

scoreboard players operation patch mcversion = #version mcversion
scoreboard players operation patch mcversion %= #100 mcversion

execute store result score minor mcversion run scoreboard players operation #version mcversion /= #100 mcversion
scoreboard players operation minor mcversion %= #100 mcversion

execute store result score major mcversion run scoreboard players operation #version mcversion /= #100 mcversion' >> "$DATAVERSION_FUNC_FILE"

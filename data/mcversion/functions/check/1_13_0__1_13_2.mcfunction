scoreboard objectives add mcversion dummy

# 1.13.0: Added data packs

scoreboard players set major mcversion 1
scoreboard players set minor mcversion 13
scoreboard players set patch mcversion 0

# 1.13.1: The scoreboard operator %= was changed from using Java's native % to using Math.floorMod.
# This causes the operator to use floored modulo instead of truncated modulo, so now -1 % 7 is 6 instead -1.
# https://minecraft.gamepedia.com/Java_Edition_1.13.1#Command_format

scoreboard players set #var1 mcversion -1
scoreboard players set #var2 mcversion 7
scoreboard players operation #var1 mcversion %= #var2 mcversion

# Before 1.13.1, #math_floormod mcversion = -1. After, #math_floormod mcversion = 6.
# Set to 1 if Math.floorMod supported, 0 if not
scoreboard players add #var1 mcversion 1
scoreboard players operation #var1 mcversion /= #var2 mcversion

# 1.13.0 -> 1.13.1 if Math.floorMod supported
scoreboard players operation patch mcversion = #var1 mcversion

# TODO: Check for 1.13.2

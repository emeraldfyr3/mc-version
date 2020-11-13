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


# Prior to 1.14.1, load functions ran in random order.
# That means that the 1.14 checks could run before this function.
# If this indicator is set, it means the version is 1.14.0.
scoreboard players operation minor mcversion += #1_14_ran mcversion
# If #1_14_ran is 0, set to 1. If 1, set to 0. Operation: (x - 1)^2
scoreboard players remove #1_14_ran mcversion 1
scoreboard players operation #1_14_ran mcversion *= #1_14_ran mcversion
# If #1_14_ran was 1 (now 0), set patch to 0. If #1_14_ran was 0 (now 1), keep patch the same.
scoreboard players operation patch mcversion *= #1_14_ran mcversion

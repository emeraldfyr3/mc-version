# 1.13.1: The scoreboard operator %= was changed from using Java's native % to using Math.floorMod.
# This causes the operator to use floored modulo instead of truncated modulo, so now -1 % 7 is 6 instead -1.
# https://minecraft.gamepedia.com/Java_Edition_1.13.1#Command_format

scoreboard players set #var1 mcversion -1
scoreboard players set #var2 mcversion 7
scoreboard players operation #var1 mcversion %= #var2 mcversion
execute if score #var1 mcversion matches 6 run scoreboard players set patch mcversion 1

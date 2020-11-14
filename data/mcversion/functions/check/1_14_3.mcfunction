# 1.14.3: Bug: Functions capable of running commands they should not be able to (publish, debug …).
# https://minecraft.gamepedia.com/Java_Edition_1.14.4#Fixes
# https://bugs.mojang.com/browse/MC-155711 (private)

execute at @s run kick @s[distance=1]
scoreboard players set patch mcversion 3

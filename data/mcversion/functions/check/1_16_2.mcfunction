#!debug
say Checking for 1.16.2

# 1.16.2: Added Piglin brutes
# https://minecraft.gamepedia.com/Java_Edition_1.16.2#Mobs
execute if score patch mcversion > patch mcversion run summon minecraft:piglin_brute
scoreboard players set patch mcversion 2

#!debug
say Checking for 1.17

# 1.17: Added item command
# https://minecraft.gamepedia.com/Java_Edition_1.17#Command_format

execute at @s run item entity @s armor.head copy entity @s[distance=1] armor.head
scoreboard players set minor mcversion 17

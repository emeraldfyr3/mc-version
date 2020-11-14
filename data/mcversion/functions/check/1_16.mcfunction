#!debug
say Checking for 1.16

# 1.16: Added attribute command
# https://minecraft.gamepedia.com/Java_Edition_1.16#Command_format

execute at @s run attribute @s[distance=1] minecraft:generic.luck get
scoreboard players set minor mcversion 16

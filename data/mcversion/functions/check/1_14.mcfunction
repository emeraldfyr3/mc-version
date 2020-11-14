# 1.14: Added schedule command
# https://minecraft.gamepedia.com/Java_Edition_1.14#Command_format

execute at @s as @s[distance=1] run schedule function mcversion:tell 0
scoreboard players set minor mcversion 14

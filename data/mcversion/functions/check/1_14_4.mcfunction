# 1.14.4: forceload permission level was lowered to 2, allowing it to run in functions
# https://minecraft.gamepedia.com/Java_Edition_1.14.4#Command_format_2
execute if score patch mcversion > patch mcversion run forceload add 0 0
scoreboard players set patch mcversion 4

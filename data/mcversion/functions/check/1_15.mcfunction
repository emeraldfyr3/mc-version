# 1.15: Added NBT text component variant for NBT storage
# https://minecraft.gamepedia.com/Java_Edition_1.15#Command_format_2

execute at @s run tellraw @s[distance=1..2] [{"nbt":"dummy","storage":"mcversion"}]
scoreboard players set minor mcversion 15

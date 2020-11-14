#!debug
say Checking for 1.15.2

# 1.15.2: Added gamerule doPatrolSpawning
# https://minecraft.gamepedia.com/Java_Edition_1.15.2#Command_format
gamerule doPatrolSpawning
scoreboard players set patch mcversion 2

# TODO: Check for 1.14.4
# The wiki says that permission level for forceload and reload changed in 1.14.4,
# but it was actually 1.14.3 so we can't use that.

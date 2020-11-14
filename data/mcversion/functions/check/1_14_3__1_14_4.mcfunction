#!debug
say Checking for 1.14.3 - 1.14.4

# 1.14.3: Added gamerule disableRaids
# https://minecraft.gamepedia.com/Java_Edition_1.14.3#Commands
gamerule disableRaids
scoreboard players set patch mcversion 3

# TODO: Check for 1.14.4
# The wiki says that permission level for forceload and reload changed in 1.14.4,
# but it was actually 1.14.3 so we can't use that.

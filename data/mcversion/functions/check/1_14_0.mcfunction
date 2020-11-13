scoreboard objectives add mcversion dummy

# 1.14.0: Added schedule command

# Prior to 1.14.1, load functions ran in random order.
# That means that the 1.13 checks could run after this function.
# Since the 1.13 commands also work in 1.14, the check will succeed and set the version to 1.13.
# To fix, we set this indicator to say that 1.14 already ran to skip the 1.13 checks.
# Then we immediately schedule the value to reset so that it's not there if the world is reloaded in 1.13.
scoreboard players set #1_14_ran mcversion 1
schedule function mcversion:helpers/reset_1_14_ran 0

scoreboard players set major mcversion 1
scoreboard players set minor mcversion 14
scoreboard players set patch mcversion 0

# 1.14.1:

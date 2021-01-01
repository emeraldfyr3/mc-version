scoreboard objectives add mcversion dummy
scoreboard players set major mcversion 1
scoreboard players set minor mcversion 13
scoreboard players set patch mcversion 0

# Check DataVersion if there is a player and disable_player is not set.
execute unless score disable_player mcversion matches 1 if entity @p run function mcversion:dataversion

# Otherwise, run the individual checks.
execute unless score disable_player mcversion matches 1 unless entity @p run function mcversion:check/all
execute if score disable_player mcversion matches 1 run function mcversion:check/all

scoreboard objectives add mcversion dummy

execute unless entity @p run function mcversion:check/all
execute if entity @p run function mcversion:dataversion

# If dataversion failed, run custom checks.
execute if entity @p if score major mcversion matches 0 if score minor mcversion matches 0 if score patch mcversion matches 0 run function mcversion:check/all

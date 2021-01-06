# Wait for a player to join, then run dataversion

execute if score #playercheck mcversion matches 1 if entity @p run function mcversion:dataversion

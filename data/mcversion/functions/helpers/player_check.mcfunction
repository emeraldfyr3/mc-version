# Wait for a player to join, then run dataversion

execute as @p run function mcversion:dataversion
execute unless score disable_delayed mcversion matches 1 unless score disable_player mcversion matches 1 unless entity @p run schedule function mcversion:helpers/player_check 1

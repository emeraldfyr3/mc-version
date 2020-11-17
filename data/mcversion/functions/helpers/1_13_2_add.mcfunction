# tellraw @a ["#1_13_2__count: ", {"score":{"name":"#1_13_2__count","objective":"mcversion"}}, ", @s: ", {"score":{"name":"@s","objective":"mcversion"}}]
execute if score #1_13_2__count mcversion = @s mcversion run scoreboard players add #1_13_2__count mcversion 1

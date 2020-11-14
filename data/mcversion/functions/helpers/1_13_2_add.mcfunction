# tellraw @a ["#var1: ", {"score":{"name":"#var1","objective":"mcversion"}}, ", @s: ", {"score":{"name":"@s","objective":"mcversion"}}]
execute if score #var1 mcversion = @s mcversion run scoreboard players add #var1 mcversion 1

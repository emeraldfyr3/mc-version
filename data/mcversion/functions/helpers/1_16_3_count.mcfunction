execute at @e[type=item,nbt={Item:{tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}},limit=1] run kill @e[type=minecraft:experience_orb,distance=..2]
execute store result score #var1 mcversion run kill @e[type=item,nbt={Item:{tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}}]
execute if score #var1 mcversion matches 2 run scoreboard players set patch mcversion 3

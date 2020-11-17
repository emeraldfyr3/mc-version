# If the piglin hasn't been killed yet, wait a tick
execute unless score disable_delayed mcversion matches 1 at @e[type=minecraft:piglin,tag=mcversion,limit=1] unless entity @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}},limit=1] run schedule function mcversion:helpers/1_16_3_count 1

execute at @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}},limit=1] run kill @e[type=minecraft:experience_orb,distance=..3]
execute store result score #var1 mcversion run kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}}]
execute if score patch mcversion matches ..2 if score #var1 mcversion matches 2 run scoreboard players set patch mcversion 3

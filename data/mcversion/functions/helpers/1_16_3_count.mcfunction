# If the piglin hasn't been killed yet, wait a tick
execute unless score disable_delayed mcversion matches 1 if entity @e[type=minecraft:piglin,tag=mcversion_1_16_3] run schedule function mcversion:helpers/1_16_3_count 1

execute unless entity @e[type=minecraft:piglin,tag=mcversion_1_16_3] if score #1_16_3__mobLoot mcversion matches 0 run gamerule doMobLoot false

execute at @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}},limit=1] run kill @e[type=minecraft:experience_orb,distance=..3]
execute at @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}},limit=1] run kill @e[type=minecraft:armor_stand,tag=mcversion_1_16_3]
execute at @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}},limit=1] unless score #1_16_3__loaded mcversion matches 1 run forceload remove 652256 1512864

execute store result score #1_16_3__count mcversion run kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}}]
execute if score patch mcversion matches 2 if score #1_16_3__count mcversion matches 2 run scoreboard players set patch mcversion 3

# 1.16.3: Fix: Giving an item and a gold ingot to a baby piglin and killing it duplicates the item
# https://bugs.mojang.com/browse/MC-198678

# Need to get some entity processing chunks for this to work. First try to find a player.
execute at @p run summon minecraft:armor_stand ~ -49 ~ {Invisible:1b,Marker:1b,Tags:["mcversion_1_16_3"]}
# If that failed, force-load a chunk. Chunk coordinates taken from shell command "cksum <<< mcversion:check/1_16_3"
execute store success score #1_16_3__loaded mcversion run forceload query 40766 94553
execute unless entity @e[type=minecraft:armor_stand,tag=mcversion_1_16_3] unless score #1_16_3__loaded mcversion matches 1 run forceload add 652256 1512864
execute unless entity @e[type=minecraft:armor_stand,tag=mcversion_1_16_3] run summon minecraft:armor_stand 652256 -49 1512864 {Invisible:1b,Marker:1b,Tags:["mcversion_1_16_3"]}

execute store result score #1_16_3__mobLoot mcversion run gamerule doMobLoot
execute if score #1_16_3__mobLoot mcversion matches 0 run gamerule doMobLoot true

execute at @e[type=minecraft:armor_stand,tag=mcversion_1_16_3] run summon minecraft:piglin ~ ~ ~ {ActiveEffects:[{Duration:99,Id:14b,ShowParticles:0b}],Brain:{memories:{"minecraft:admiring_item":{ttl:9L,value:1b}}},HandDropChances:[2f,2f],HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:"{\"text\":\"mcversion\"}"}}},{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}],Health:1f,IsBaby:1b,IsImmuneToZombification:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["mcversion_1_16_3"]}
execute at @e[type=minecraft:piglin,tag=mcversion_1_16_3] run summon minecraft:arrow ~ ~1.3 ~ {Motion:[0d,-9d,0d],Silent:1b,Tags:["mcversion_1_16_3"]}
data modify entity @e[type=minecraft:arrow,tag=mcversion_1_16_3,limit=1] Owner set from entity @e[type=minecraft:armor_stand,tag=mcversion_1_16_3,limit=1] UUID

function mcversion:helpers/1_16_3_count

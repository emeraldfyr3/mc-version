# 1.16.3: Fix: Giving an item and a gold ingot to a baby piglin and killing it duplicates the item
# https://bugs.mojang.com/browse/MC-198678

# Need to get some entity processing chunks for this to work. First try to find a player.
execute at @p run summon minecraft:armor_stand ~ -59 ~ {Invisible:1b,Marker:1b,Tags:["mcversion"]}
# If that failed, force-load a chunk. Chunk coordinates taken from shell command "cksum <<< emeraldfyr3"
execute store success score #1_16_3__loaded mcversion run forceload query 22356 64094
execute unless entity @e[type=minecraft:armor_stand,tag=mcversion] unless score #1_16_3__loaded mcversion matches 1 run forceload add 357704 1025512
execute unless entity @e[type=minecraft:armor_stand,tag=mcversion] run summon minecraft:armor_stand 357704 -59 1025512 {Invisible:1b,Marker:1b,Tags:["mcversion"]}

execute store result score #1_16_3__mobLoot mcversion run gamerule doMobLoot
execute if score #1_16_3__mobLoot mcversion matches 0 run gamerule doMobLoot true

execute at @e[type=minecraft:armor_stand,tag=mcversion] run summon minecraft:piglin ~ ~ ~ {ActiveEffects:[{Duration:99,Id:14b,ShowParticles:0b}],Brain:{memories:{"minecraft:admiring_item":{ttl:9L,value:1b}}},HandDropChances:[2f,2f],HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:"{\"text\":\"mcversion\"}"}}},{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}],Health:1f,IsBaby:1b,IsImmuneToZombification:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["mcversion"]}
execute at @e[type=minecraft:piglin,tag=mcversion] run summon minecraft:arrow ~ ~1.3 ~ {Motion:[0d,-9d,0d],Silent:1b,Tags:["mcversion"]}
data modify entity @e[type=minecraft:arrow,tag=mcversion,limit=1] Owner set from entity @e[type=minecraft:armor_stand,tag=mcversion,limit=1] UUID

function mcversion:helpers/1_16_3_count

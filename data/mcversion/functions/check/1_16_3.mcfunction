# Need to wait until a player joins
execute unless score disable_delayed mcversion matches 1 unless entity @p run schedule function mcversion:check/1_16_3 1

# 1.16.3: Fix: Giving an item and a gold ingot to a baby piglin and killing it duplicates the item
# https://bugs.mojang.com/browse/MC-198678

execute at @p run summon minecraft:piglin ~ -49 ~ {ActiveEffects:[{Duration:99,Id:14b,ShowParticles:0b}],Brain:{memories:{"minecraft:admiring_item":{ttl:9L,value:1b}}},HandDropChances:[2f,2f],HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:"{\"text\":\"mcversion\"}"}}},{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}],Health:1f,Invisible:1b,IsBaby:1b,IsImmuneToZombification:1b,PersistenceRequired:1b,Silent:1b,Tags:["mcversion"]}
execute at @p run summon minecraft:arrow ~ -47.7 ~ {Motion:[0d,-9d,0d],Silent:1b,Tags:["mcversion"]}
execute run data modify entity @e[type=minecraft:arrow,tag=mcversion,limit=1] Owner set from entity @p UUID
execute at @p run function mcversion:helpers/1_16_3_count

# TODO: Make this check more consistent. Sometimes it fails on world load.

# Need to wait until a player joins
execute unless score disable_delayed mcversion matches 1 unless entity @p run schedule function mcversion:check/1_16_3 5

# 1.16.3: Fix: Giving an item and a gold ingot to a baby piglin and killing it duplicates the item
# https://bugs.mojang.com/browse/MC-198678

execute unless score disable_delayed mcversion matches 1 unless score disable_entities mcversion matches 1 unless score disable_player mcversion matches 1 at @p run summon minecraft:piglin ~ -49 ~ {IsBaby:1b,Health:1f,HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:"{\"text\":\"mcversion\"}"}}},{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:"{\"text\":\"mcversion\"}"}}}],HandDropChances:[2.0f,2.0f],Brain:{memories:{"minecraft:admiring_item":{value:1b,ttl:9L}}}}
execute unless score disable_delayed mcversion matches 1 unless score disable_entities mcversion matches 1 unless score disable_player mcversion matches 1 at @p run summon minecraft:arrow ~ -47.7 ~ {Motion:[0d,-9d,0d],Tags:["mcversion"]}
execute unless score disable_delayed mcversion matches 1 unless score disable_entities mcversion matches 1 unless score disable_player mcversion matches 1 run data modify entity @e[tag=mcversion,limit=1] Owner set from entity @p UUID
execute unless score disable_delayed mcversion matches 1 unless score disable_entities mcversion matches 1 unless score disable_player mcversion matches 1 at @p run schedule function mcversion:helpers/1_16_3_count 2

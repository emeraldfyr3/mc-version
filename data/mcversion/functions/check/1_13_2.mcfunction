##### BROKEN!! The ordering in 1.13.2 is still oldest first after summoning until the entities are unloaded.

# 1.13.2: Bug: Selectors have inconsistent return order
# Prior to 1.13.2, selecting entities with no sort returned then in order of age.
# In 1.13.2, the order is seemingly random.
# https://bugs.mojang.com/browse/MC-144496

# Summon 15 Area Effect Clouds, with scores from 14 to 0 in order of oldest to newest
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run scoreboard players add @e[tag=mcversion] mcversion 1

# Set #1_13_2__count to 14 and have each cloud remove 1 from it only if it matches its score.
# In the end, #1_13_2__count will be 0 only if all 15 clouds are selected in order of age.
scoreboard players set #1_13_2__count mcversion 1
execute as @e[tag=mcversion] run function mcversion:helpers/1_13_2_add
execute unless score disable_entities mcversion matches 1 as @e[limit=1] unless score #1_13_2__count mcversion matches 16 run scoreboard players set patch mcversion 2
execute unless score disable_entities mcversion matches 1 run kill @e[tag=mcversion]

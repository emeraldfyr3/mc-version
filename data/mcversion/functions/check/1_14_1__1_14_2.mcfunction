# Need to wait until at least some entity is loaded, so the tests can use entities
execute unless score disable_delayed mcversion matches 1 unless score disable_player mcversion matches 1 unless entity @e[limit=1] run schedule function mcversion:check/1_14_1__1_14_2 1

# 1.14.2: Fix: Trader llamas immediately disappear when spawned with a spawn egg
# Also works for /summon with no NBT data. Before 1.14.2, summoning with no NBT sets DespawnDelay to 0.

execute unless score disable_entities mcversion matches 1 as @e[limit=1] run summon minecraft:trader_llama ~ -99 ~
execute unless score disable_entities mcversion matches 1 as @e[limit=1] store result score #var1 mcversion run data get entity @e[type=minecraft:trader_llama,y=-99,dy=1,limit=1] DespawnDelay
# Make it a baby so it doesn't drop loot or xp
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run data modify entity @e[type=minecraft:trader_llama,y=-99,dy=1,limit=1] Age set value -1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run kill @e[type=minecraft:trader_llama,y=-99,dy=1,limit=1]
execute unless score disable_entities mcversion matches 1 as @e[limit=1] if score #var1 mcversion matches 1.. run scoreboard players set patch mcversion 2

# 1.14.1: Fix: Execution order is reversed when calling a function in some cases
# Before 1.14.1, executing a function within a function using a selector with sort=nearest will
# reverse the order, instead executing as if it were sort=furthest.
# https://bugs.mojang.com/browse/MC-126946

execute unless score disable_entities mcversion matches 1 unless score patch mcversion matches 1.. as @e[limit=1] run function mcversion:helpers/1_14_1_main

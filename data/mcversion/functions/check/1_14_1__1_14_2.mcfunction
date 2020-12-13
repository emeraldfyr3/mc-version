# 1.14.2: Fix: Trader llamas immediately disappear when spawned with a spawn egg
# Also works for /summon with no NBT data. Before 1.14.2, summoning with no NBT sets DespawnDelay to 0.

# We can't use forceload until 1.14.3, so we need to find a loaded chunk.
# If there are any loaded entities, they must be in a loaded chunk.
execute at @e[limit=1] run summon minecraft:trader_llama ~ -99 ~
# If there are no loaded entities, try to summon the llama at the current position.
execute unless entity @e run summon minecraft:trader_llama ~ -99 ~
# If the llama couldn't be summoned and there are no loaded entities, try again next tick.
tag @e[type=minecraft:trader_llama,nbt={Pos:[-99.0d]}] add mcversion_1_14_2
execute unless score disable_delayed mcversion matches 1 unless entity @e[tag=mcversion_1_14_2] run schedule function mcversion:check/1_14_1__1_14_2 1

execute store result score #1_14_2__data mcversion run data get entity @e[tag=mcversion_1_14_2,limit=1] DespawnDelay
# Make it a baby so it doesn't drop loot or xp
data modify entity @e[tag=mcversion_1_14_2,limit=1] Age set value -1
execute if score #1_14_2__data mcversion matches 1.. run scoreboard players set patch mcversion 2

# 1.14.1: Fix: Execution order is reversed when calling a function in some cases
# Before 1.14.1, executing a function within a function using a selector with sort=nearest will
# reverse the order, instead executing as if it were sort=furthest.
# https://bugs.mojang.com/browse/MC-126946

# Only run if the 1.14.2 check already ran
execute unless score patch mcversion matches 1.. at @e[tag=mcversion_1_14_2,limit=1] run function mcversion:helpers/1_14_1_main
# Kill the test entity from the 1.14.2 check
kill @e[tag=mcversion_1_14_2]

execute store result score #1_16_4__x mcversion run data get entity @e[type=minecraft:armor_stand,tag=mcversion_1_16_4,limit=1] Motion[0]
kill @e[tag=mcversion_1_16_4]
# execute unless score #1_16_4__loaded mcversion matches 1 run forceload remove 665624 85704

# If x speed is very high (above 20), it must not be 1.16.4. If it's 0, the check failed.
execute if score #1_16_4__x mcversion matches -20..20 unless score #1_16_4__x mcversion matches 0 run scoreboard players set patch mcversion 4
execute unless score disable_player mcversion matches 1 if score #1_16_4__x mcversion matches 0 run function mcversion:check/1_16_4

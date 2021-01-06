##### GENERATED FILE -- DO NOT EDIT #####

# Determine the version from the player's DataVersion tag
# Thanks to Evtema3 for pointing this out to me

execute store result score #dataversion mcversion run data get entity @p DataVersion
scoreboard players set #version mcversion 0

execute if score #dataversion mcversion matches 100..169 run scoreboard players set #version mcversion 10900
execute if score #dataversion mcversion matches 170..175 run scoreboard players set #version mcversion 10901
execute if score #dataversion mcversion matches 176..176 run scoreboard players set #version mcversion 10902
execute if score #dataversion mcversion matches 177..183 run scoreboard players set #version mcversion 10903
execute if score #dataversion mcversion matches 184..184 run scoreboard players set #version mcversion 10904
execute if score #dataversion mcversion matches 501..510 run scoreboard players set #version mcversion 11000
execute if score #dataversion mcversion matches 511..511 run scoreboard players set #version mcversion 11001
execute if score #dataversion mcversion matches 512..512 run scoreboard players set #version mcversion 11002
execute if score #dataversion mcversion matches 800..819 run scoreboard players set #version mcversion 11100
execute if score #dataversion mcversion matches 920..921 run scoreboard players set #version mcversion 11101
execute if score #dataversion mcversion matches 922..922 run scoreboard players set #version mcversion 11102
execute if score #dataversion mcversion matches 1022..1139 run scoreboard players set #version mcversion 11200
execute if score #dataversion mcversion matches 1239..1241 run scoreboard players set #version mcversion 11201
execute if score #dataversion mcversion matches 1341..1343 run scoreboard players set #version mcversion 11202
execute if score #dataversion mcversion matches 1444..1519 run scoreboard players set #version mcversion 11300
execute if score #dataversion mcversion matches 1620..1628 run scoreboard players set #version mcversion 11301
execute if score #dataversion mcversion matches 1629..1631 run scoreboard players set #version mcversion 11302
execute if score #dataversion mcversion matches 1901..1952 run scoreboard players set #version mcversion 11400
execute if score #dataversion mcversion matches 1955..1957 run scoreboard players set #version mcversion 11401
execute if score #dataversion mcversion matches 1958..1963 run scoreboard players set #version mcversion 11402
execute if score #dataversion mcversion matches 1964..1968 run scoreboard players set #version mcversion 11403
execute if score #dataversion mcversion matches 1969..1976 run scoreboard players set #version mcversion 11404
execute if score #dataversion mcversion matches 2067..2067 run scoreboard players set #version mcversion 11403
execute if score #dataversion mcversion matches 2068..2069 run scoreboard players set #version mcversion 11404
execute if score #dataversion mcversion matches 2200..2225 run scoreboard players set #version mcversion 11500
execute if score #dataversion mcversion matches 2226..2227 run scoreboard players set #version mcversion 11501
execute if score #dataversion mcversion matches 2228..2230 run scoreboard players set #version mcversion 11502
execute if score #dataversion mcversion matches 2320..2320 run scoreboard players set #version mcversion 11500
execute if score #dataversion mcversion matches 2321..2321 run scoreboard players set #version mcversion 11502
execute if score #dataversion mcversion matches 2504..2566 run scoreboard players set #version mcversion 11600
execute if score #dataversion mcversion matches 2567..2567 run scoreboard players set #version mcversion 11601
execute if score #dataversion mcversion matches 2569..2578 run scoreboard players set #version mcversion 11602
execute if score #dataversion mcversion matches 2579..2580 run scoreboard players set #version mcversion 11603
execute if score #dataversion mcversion matches 2581..2584 run scoreboard players set #version mcversion 11604
execute if score #dataversion mcversion matches 2681..2687 run scoreboard players set #version mcversion 11700
execute if score #dataversion mcversion matches 2701..2707 run scoreboard players set #version mcversion 11602

scoreboard players set #100 mcversion 100

scoreboard players operation patch mcversion = #version mcversion
scoreboard players operation patch mcversion %= #100 mcversion

execute store result score minor mcversion run scoreboard players operation #version mcversion /= #100 mcversion
scoreboard players operation minor mcversion %= #100 mcversion

execute store result score major mcversion run scoreboard players operation #version mcversion /= #100 mcversion

# Reset the value from mcversion:helpers/player_check_1_13
scoreboard players set #playercheck mcversion 0

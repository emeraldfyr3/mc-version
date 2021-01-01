execute store result score #dataversion mcversion run data get entity @p DataVersion

# Major version
execute if score #dataversion mcversion matches 100..2707 run scoreboard players set major mcversion 1

# Minor version
execute if score #dataversion mcversion matches 100..184 run scoreboard players set minor mcversion 9
execute if score #dataversion mcversion matches 501..512 run scoreboard players set minor mcversion 10
execute if score #dataversion mcversion matches 800..922 run scoreboard players set minor mcversion 11
execute if score #dataversion mcversion matches 1022..1343 run scoreboard players set minor mcversion 12
execute if score #dataversion mcversion matches 1444..1631 run scoreboard players set minor mcversion 13
execute if score #dataversion mcversion matches 1901..2069 run scoreboard players set minor mcversion 14
execute if score #dataversion mcversion matches 2200..2321 run scoreboard players set minor mcversion 15
execute if score #dataversion mcversion matches 2504..2584 run scoreboard players set minor mcversion 16
execute if score #dataversion mcversion matches 2681..2687 run scoreboard players set minor mcversion 17
execute if score #dataversion mcversion matches 2701..2707 run scoreboard players set minor mcversion 16

# Patch version
execute if score #dataversion mcversion matches 100..169 run scoreboard players set patch mcversion 0
execute if score #dataversion mcversion matches 170..175 run scoreboard players set patch mcversion 1
execute if score #dataversion mcversion matches 176 run scoreboard players set patch mcversion 2
execute if score #dataversion mcversion matches 177..183 run scoreboard players set patch mcversion 3
execute if score #dataversion mcversion matches 184 run scoreboard players set patch mcversion 3
execute if score #dataversion mcversion matches 501..510 run scoreboard players set patch mcversion 0
execute if score #dataversion mcversion matches 511 run scoreboard players set patch mcversion 1
execute if score #dataversion mcversion matches 512 run scoreboard players set patch mcversion 2
execute if score #dataversion mcversion matches 800..819 run scoreboard players set patch mcversion 0
execute if score #dataversion mcversion matches 920..921 run scoreboard players set patch mcversion 1
execute if score #dataversion mcversion matches 922 run scoreboard players set patch mcversion 2
execute if score #dataversion mcversion matches 1022..1139 run scoreboard players set patch mcversion 0
execute if score #dataversion mcversion matches 1239..1241 run scoreboard players set patch mcversion 1
execute if score #dataversion mcversion matches 1341..1343 run scoreboard players set patch mcversion 2
execute if score #dataversion mcversion matches 1444..1519 run scoreboard players set patch mcversion 0
execute if score #dataversion mcversion matches 1620..1628 run scoreboard players set patch mcversion 1
execute if score #dataversion mcversion matches 1629..1631 run scoreboard players set patch mcversion 2
execute if score #dataversion mcversion matches 1901..1952 run scoreboard players set patch mcversion 0
execute if score #dataversion mcversion matches 1955..1957 run scoreboard players set patch mcversion 1
execute if score #dataversion mcversion matches 1958..1963 run scoreboard players set patch mcversion 2
execute if score #dataversion mcversion matches 1964..1968 run scoreboard players set patch mcversion 3
execute if score #dataversion mcversion matches 1969..1976 run scoreboard players set patch mcversion 4
execute if score #dataversion mcversion matches 2067 run scoreboard players set patch mcversion 3
execute if score #dataversion mcversion matches 2068..2069 run scoreboard players set patch mcversion 4
execute if score #dataversion mcversion matches 2200..2225 run scoreboard players set patch mcversion 0
execute if score #dataversion mcversion matches 2226..2227 run scoreboard players set patch mcversion 1
execute if score #dataversion mcversion matches 2228..2230 run scoreboard players set patch mcversion 2
execute if score #dataversion mcversion matches 2320 run scoreboard players set patch mcversion 0
execute if score #dataversion mcversion matches 2321 run scoreboard players set patch mcversion 2
execute if score #dataversion mcversion matches 2504..2566 run scoreboard players set patch mcversion 0
execute if score #dataversion mcversion matches 2567 run scoreboard players set patch mcversion 1
execute if score #dataversion mcversion matches 2573..2578 run scoreboard players set patch mcversion 2
execute if score #dataversion mcversion matches 2579..2580 run scoreboard players set patch mcversion 3
execute if score #dataversion mcversion matches 2581..2584 run scoreboard players set patch mcversion 4
execute if score #dataversion mcversion matches 2681..2687 run scoreboard players set patch mcversion 0
execute if score #dataversion mcversion matches 2701..2707 run scoreboard players set patch mcversion 2

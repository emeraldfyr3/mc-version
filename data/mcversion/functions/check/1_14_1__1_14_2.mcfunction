#!debug
execute if entity @e[limit=1] run say Checking for 1.14.1 - 1.14.2

# Need to wait until at least some entity is loaded, so the test can use entities
execute unless entity @e[limit=1] run schedule function mcversion:check/1_14_1__1_14_2 1
execute as @e[limit=1] run function mcversion:helpers/1_14_1__1_14_2_main

# Need to wait until at least some entity is loaded, so the test can use entities
execute unless score disable_delayed mcversion matches 1 unless score disable_entities mcversion matches 1 unless score disable_player mcversion matches 1 unless entity @e[limit=1] run schedule function mcversion:check/1_14_1__1_14_2 1
execute unless score disable_entities mcversion matches 1 as @e[limit=1] run function mcversion:helpers/1_14_1__1_14_2_main

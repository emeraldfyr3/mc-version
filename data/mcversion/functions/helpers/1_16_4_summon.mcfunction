# The ender dragon is 9 different entities, but only the main one gets the mcversion tag.
# The one we have to summon the armor stand at is the one nearest to the main one.
execute at @e[type=minecraft:ender_dragon,tag=mcversion] run execute at @e[type=minecraft:ender_dragon,tag=!mcversion,sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["mcversion"]}
schedule function mcversion:helpers/1_16_4_radar 1

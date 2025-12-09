execute unless entity @s run return 0
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron master @a[distance=..25] ~ ~ ~ 1.2 2 0.5
particle minecraft:bubble_pop ~ ~ ~ 0.2 0.2 0.2 0 10
particle minecraft:splash ~ ~ ~ 0.2 0.2 0.2 0 50

execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.4
execute at @s run kill @e[tag=svm_ep.temporary_block_water_fast,distance=..3]
execute at @s run function svm_ep:power/water/creation/effect

summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/2":1}}}}}
#particle minecraft:gust_emitter_small
playsound minecraft:entity.breeze.shoot master @a[distance=..35] ~ ~ ~ 0.4 1.7 0.1
kill @s[type=!player]

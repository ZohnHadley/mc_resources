execute unless entity @s run return 0
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron master @a[distance=..25] ~ ~ ~ 1.2 1 1
particle minecraft:bubble_pop
particle minecraft:splash ~ ~ ~ 0.2 0.2 0.2 0 100

execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.4
execute at @s run function svm_ep:power/water/creation/effect
execute at @s run kill @e[tag=svm_ep.temporary_block_water_fast,distance=..2]
summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/6":1}}}}}
execute at @s[scores={svm_ep.charge_length=5..}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/4":1}}}}}
execute at @s[scores={svm_ep.charge_length=20..}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/4":1}}}}}
execute at @s[scores={svm_ep.charge_length=35..}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/4":1}}}}}
particle minecraft:gust_emitter_small
playsound minecraft:entity.breeze.shoot master @a[distance=..35] ~ ~ ~ 1 0.7 0.4
kill @s[type=!player]

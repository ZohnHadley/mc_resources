scoreboard players add @s svm_ep.mana_drain 150
scoreboard players add @s svm_ep.used_move 1

execute positioned ~ ~2 ~ if block ~ ~-1 ~ minecraft:water run function svm_ep:power/water/creation/variant/manipulation_place_water
execute positioned ~ ~1 ~ if block ~ ~-1 ~ minecraft:water run function svm_ep:power/water/creation/variant/manipulation_place_water
execute positioned ~ ~ ~ if block ~ ~-1 ~ minecraft:water run function svm_ep:power/water/creation/variant/manipulation_place_water
execute positioned ~ ~-1 ~ if block ~ ~-1 ~ minecraft:water run function svm_ep:power/water/creation/variant/manipulation_place_water
particle minecraft:poof ~ ~ ~ 0 0 0 0.25 5
summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/creation_manipulation":1}}}}}

scoreboard players add @s svm_ep.used_move 1
scoreboard players add @s svm_ep.mana_drain 35
execute store result score water svm_ep.numbers run clone ~1.5 ~1.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 to svm_ep:technical 0 0 0 filtered water[level=0]

execute if score water svm_ep.numbers matches ..15 run return run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/creation_manipulation_increased_1":1}}}}}
execute if score water svm_ep.numbers matches ..32 run return run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/creation_manipulation_increased_2":1}}}}}
#execute if score water svm_ep.numbers matches 16.. run return run 
summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/creation_manipulation_increased_3":1}}}}}



execute align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/water/temporary/place

#scoreboard players operation water svm_ep.numbers *= %water_creation_manipulation_increase_by_water svm_ep.world_settings
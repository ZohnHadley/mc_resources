execute facing entity @s eyes positioned ^ ^ ^2.5 run function svm_ep:power/water/place_effect
particle minecraft:poof ~ ~ ~ 0 0 0 0.25 5
scoreboard players add @s svm_ep.used_move 1
scoreboard players add @s svm_ep.mana_drain 25

summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/creation_manipulation":1}}}}}
execute store result score water svm_ep.numbers run clone ~1.5 ~1.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 to svm_ep:technical 0 0 0 filtered water
execute if score water svm_ep.numbers matches 15.. run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/creation_manipulation_increased_1":1}}}}}
execute if score water svm_ep.numbers matches 32.. run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/creation_manipulation_increased_2":1}}}}}

scoreboard players set $strength player_motion.api.launch -500

scoreboard players operation water svm_ep.numbers *= %water_creation_flowing_movement_increase_by_water svm_ep.world_settings
scoreboard players operation $strength player_motion.api.launch -= water svm_ep.numbers 
execute facing ~ ~ ~ at @s run function player_motion:api/launch_looking
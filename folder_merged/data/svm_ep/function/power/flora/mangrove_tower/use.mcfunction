
execute as @s[scores={svm_ep.p.flora_mangrove_tower_variant_charge=10..}] at @s anchored eyes positioned ^ ^ ^1.4 run function svm_ep:power/flora/mangrove_tower/shoot_as_bridge
execute unless entity @s[scores={svm_ep.p.flora_mangrove_tower_variant_charge=10..}] at @s anchored eyes positioned ^ ^ ^1.4 run function svm_ep:power/flora/mangrove_tower/raycast


scoreboard players reset @s svm_ep.p.flora_mangrove_tower_variant_charge
scoreboard players reset @s svm_ep.raycast_length
scoreboard players reset @s[tag=end_raycast1] svm_ep.using_move
scoreboard players reset @s[tag=end_raycast1] svm_ep.charge_length
tag @s remove end_raycast1
tag @s remove end_raycast
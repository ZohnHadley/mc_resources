scoreboard players add @s svm_ep.p.flora_ability_29_delay 3
scoreboard players add @s svm_ep.mana_drain 150
scoreboard players add @s svm_ep.used_move 3
scoreboard players add @s svm_ep.using_move 1

execute if biome ~ ~ ~ #svm_ep:unlocks_climate/mangrove run scoreboard players add @s svm_ep.charge_length 3
scoreboard players add @s[scores={svm_ep.mana=2..}] svm_ep.charge_length 2
scoreboard players set @s[scores={svm_ep.charge_length=65..}] svm_ep.charge_length 65

function svm_ep:system/get_rotation
scoreboard players add @s[scores={rot.y=80..}] svm_ep.p.flora_mangrove_tower_variant_charge 1
execute as @s[scores={svm_ep.p.flora_mangrove_tower_variant_charge=10..}] run particle minecraft:crit ^ ^1 ^1 1 1 1 0.2 10



tag @s add executor
execute if predicate svm_ep:holding_ability run function svm_ep:power/flora/mangrove_tower/display_start
execute unless predicate svm_ep:holding_ability run function svm_ep:power/flora/mangrove_tower/use
tag @s remove executor

effect give @s minecraft:slowness 1 1 true





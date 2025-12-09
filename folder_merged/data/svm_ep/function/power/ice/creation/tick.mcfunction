execute at @s anchored eyes positioned ^ ^ ^3 run function svm_ep:power/ice/creation/freeze_water
#execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}} run return 1
scoreboard players reset @s svm_ep.p.ice_created
execute unless entity @s[scores={svm_ep.numbers=1..}] at @s anchored eyes positioned ^ ^ ^3 run function svm_ep:power/ice/creation/place
execute unless entity @s[scores={svm_ep.numbers=1..}] at @s anchored eyes positioned ^ ^1.8 ^3 run function svm_ep:power/ice/creation/place
execute unless entity @s[scores={svm_ep.numbers=1..}] at @s anchored eyes positioned ^ ^-1.8 ^3 run function svm_ep:power/ice/creation/place
execute unless entity @s[scores={svm_ep.numbers=1..}] at @s anchored eyes positioned ^1.8 ^ ^3 run function svm_ep:power/ice/creation/place
execute unless entity @s[scores={svm_ep.numbers=1..}] at @s anchored eyes positioned ^-1.8 ^ ^3 run function svm_ep:power/ice/creation/place
scoreboard players set @s svm_ep.using_move 150

execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:3}} run scoreboard players add @s svm_ep.p.ice_ability_02_delay 2

execute unless score @s svm_ep.mana matches 1.. run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players set @s[scores={svm_ep.p.ice_ability_02_delay=60..}] svm_ep.p.ice_ability_02_delay 60

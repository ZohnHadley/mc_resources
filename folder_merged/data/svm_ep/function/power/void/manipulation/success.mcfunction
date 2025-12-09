scoreboard players remove @s svm_ep.mana 10
scoreboard players add @s svm_ep.used_move 75
scoreboard players set @s svm_ep.p.void_ability_03_delay 2
execute anchored eyes positioned ^ ^0.2 ^1 run function svm_ep:power/void/manipulation/raycast
tag @s remove end_raycast

scoreboard players add @s svm_ep.mana_drain 5
scoreboard players add @s svm_ep.used_move 2
scoreboard players set @s svm_ep.p.harpie_ability_06_delay 5
execute unless entity @s[scores={svm_ep.mana=1..}] run scoreboard players reset @s svm_ep.using_move
tag @s add executor
scoreboard players set @s svm_ep.raycast_length 100
execute anchored eyes positioned ^ ^0.2 ^1 run function svm_ep:power/harpie/manipulation/raycast
tag @s remove executor
tag @s remove end_raycast

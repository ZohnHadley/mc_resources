execute unless predicate svm_ep:holding_ability run return run scoreboard players reset @s svm_ep.using_move
scoreboard players add @s svm_ep.p.water_ability_01_delay 1
scoreboard players add @s svm_ep.used_move 2

scoreboard players set %raycast_state svm_ep.numbers 1
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^0.1 run function svm_ep:power/water/creation/raycast
tag @s remove executor
scoreboard players add @s[scores={svm_ep.using_move=..96}] svm_ep.mana_drain 25
scoreboard players add @s[scores={svm_ep.using_move=..90}] svm_ep.mana_drain 25
scoreboard players reset @s[scores={svm_ep.using_move=..20}] svm_ep.using_move
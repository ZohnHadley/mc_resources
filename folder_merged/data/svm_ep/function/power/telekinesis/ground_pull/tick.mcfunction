


scoreboard players reset @s svm_ep.numbers
execute as @s[scores={svm_ep.using_move=101588}] at @s anchored eyes positioned ^ ^ ^0.1 run function svm_ep:power/telekinesis/ground_pull/spawn_raycast/raycast

execute as @s[scores={svm_ep.using_move=101584..}] run return 1



scoreboard players add @s[scores={svm_ep.using_move=101582..}] svm_ep.using_move 1
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move


execute unless entity @e[tag=svm_ep.telekinesis_ground_pull] run scoreboard players reset @s svm_ep.using_move
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^7 run function svm_ep:power/telekinesis/ground_pull/raycast/raycast
tag @s remove executor

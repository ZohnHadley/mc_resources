execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.numbers 1
execute unless entity @s[distance=..95] run scoreboard players set @s svm_ep.numbers 2
execute if entity @e[tag=!executor,dx=0,type=!#svm_ep:technical] run scoreboard players set @s svm_ep.numbers 3

execute as @s[scores={svm_ep.numbers=1..}] run return run function svm_ep:power/telekinesis/ground_pull/raycast/end

execute positioned ^ ^ ^0.2 run function svm_ep:power/telekinesis/ground_pull/raycast/raycast
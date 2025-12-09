execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.numbers 1
execute unless entity @s[distance=..95] run scoreboard players set @s svm_ep.numbers 2
execute as @s[scores={svm_ep.numbers=1..}] run return run function svm_ep:power/telekinesis/ground_pull/spawn_raycast/end

execute positioned ^ ^ ^0.2 run function svm_ep:power/telekinesis/ground_pull/spawn_raycast/raycast
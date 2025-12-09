scoreboard players remove @s svm_ep.p.flora_tree_range 1
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.p.flora_tree_range -1


execute as @s[scores={svm_ep.p.flora_tree_range=1..}] positioned ^ ^ ^0.5 run return run function svm_ep:power/flora/tree_place/raycast
execute as @s[scores={svm_ep.p.flora_tree_range=-1}] summon marker run function svm_ep:power/flora/tree_big/place
effect clear @s[scores={svm_ep.p.flora_tree_range=-1}] slowness

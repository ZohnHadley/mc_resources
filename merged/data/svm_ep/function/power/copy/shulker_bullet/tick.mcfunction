scoreboard players add @s svm_ep.p.copy_ability_17_delay 1


execute as @s[scores={svm_ep.using_move=994..}] run return 0
scoreboard players reset @s svm_ep.using_move

execute anchored eyes positioned ^ ^ ^0.2 run function svm_ep:power/copy/shulker_bullet/shoot
effect clear @s minecraft:slowness
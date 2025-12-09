
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.numbers 4
execute as @n[type=!#svm_ep:technical,tag=!executor,dx=0] run tag @s add hitby
execute as @n[type=!#svm_ep:technical,tag=!executor,distance=..3] run tag @s add hitby
execute unless entity @s[distance=..100] run scoreboard players set @s svm_ep.numbers 4
execute as @e[tag=hitby] run return run function svm_ep:power/death/memento_mori/apply
execute unless entity @s[scores={svm_ep.numbers=4}] positioned ^ ^ ^0.55 run return run function svm_ep:power/death/memento_mori/raycast

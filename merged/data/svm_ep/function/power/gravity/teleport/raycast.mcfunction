

execute if entity @n[type=!#svm_ep:technical,tag=!executor,dx=0] run scoreboard players set @s svm_ep.numbers 4
execute if entity @n[type=!#svm_ep:technical,tag=!executor,distance=..1] run scoreboard players set @s svm_ep.numbers 4
execute unless block ^ ^ ^0.55 #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.numbers 3
execute if entity @n[tag=svm_ep.gravity_field,distance=..4] run scoreboard players set @s svm_ep.numbers 1

execute unless entity @s[distance=..100] run scoreboard players set @s svm_ep.numbers 2
execute as @s[scores={svm_ep.numbers=1..}] positioned ~ ~ ~ run function svm_ep:power/gravity/teleport/apply
execute unless entity @s[scores={svm_ep.numbers=1..}] positioned ^ ^ ^0.55 run function svm_ep:power/gravity/teleport/raycast

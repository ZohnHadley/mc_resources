execute unless block ^ ^ ^0.35 #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.numbers 2
execute if entity @n[type=!#svm_ep:technical,tag=!executor,dx=0] run scoreboard players set @s svm_ep.numbers 3
execute if entity @n[type=!#svm_ep:technical,tag=!executor,distance=..3] run scoreboard players set @s svm_ep.numbers 3
execute unless entity @s[distance=..20] run scoreboard players set @s svm_ep.numbers 4

execute as @s[scores={svm_ep.numbers=2..3}] positioned ~ ~ ~ run function svm_ep:power/flora/wet_moss/apply
execute unless entity @s[scores={svm_ep.numbers=1..}] positioned ^ ^ ^0.55 run function svm_ep:power/flora/wet_moss/raycast

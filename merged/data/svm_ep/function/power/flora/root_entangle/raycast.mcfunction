execute unless block ^ ^ ^0.25 #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.numbers 1
#execute if entity @n[type=!#svm_ep:technical,tag=!executor,dx=0] run scoreboard players set @s svm_ep.numbers 3
execute if block ^ ^ ^0.25 #svm_ep:logs_and_wood run scoreboard players set @s svm_ep.numbers 3
execute unless entity @s[distance=..20] run scoreboard players set @s svm_ep.numbers 1
execute as @s[scores={svm_ep.numbers=3}] positioned ^ ^ ^0.25 run function svm_ep:power/flora/root_entangle/apply
execute unless entity @s[scores={svm_ep.numbers=1..}] positioned ^ ^ ^0.25 run function svm_ep:power/flora/root_entangle/raycast



execute if entity @n[type=!#svm_ep:technical,tag=!executor,dx=0] run scoreboard players set @s svm_ep.numbers 3
execute if entity @n[type=!#svm_ep:technical,tag=!executor,distance=..3] run scoreboard players set @s svm_ep.numbers 3
execute unless entity @s[distance=..100] run scoreboard players set @s svm_ep.numbers 4

execute as @s[scores={svm_ep.numbers=3}] positioned ~ ~ ~ run function svm_ep:power/gravity/strengthen/apply
execute unless entity @s[scores={svm_ep.numbers=1..}] positioned ^ ^ ^0.55 run function svm_ep:power/gravity/strengthen/raycast_for_mob

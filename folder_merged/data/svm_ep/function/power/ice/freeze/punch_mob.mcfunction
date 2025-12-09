tag @s add executor

execute as @e[tag=!executor,type=!#svm_ep:technical,distance=..10] at @s on attacker if entity @s[tag=executor] as @n[tag=!executor,type=!#svm_ep:technical] run function svm_ep:power/ice/freeze/hit_by
scoreboard players reset @s svm_ep.p.ice_freeze
tag @s remove executor

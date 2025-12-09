execute at @s anchored eyes positioned ^ ^ ^1.5 run function svm_ep:particle/impact/spawn
tag @s add executor

execute as @e[tag=!executor,type=!#svm_ep:technical,distance=..10,scores={svm_ep.time_stopped=1..}] at @s on attacker if entity @s[tag=executor] as @n[tag=!executor,type=!#svm_ep:technical] run function svm_ep:time/attacked_mob
tag @s remove executor
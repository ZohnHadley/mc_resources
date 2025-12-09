

tag @s add executor


execute at @s as @e[tag=!executor,distance=..8,type=!#svm_ep:technical] at @s on attacker if entity @s[tag=executor] as @n as @s[nbt={HurtTime:10s}] run function svm_ep:power/copy/withering_touch/hit_by
tag @s remove executor

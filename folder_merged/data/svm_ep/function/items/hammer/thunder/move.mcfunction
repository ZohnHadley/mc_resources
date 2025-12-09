execute at @s as @s[tag=svm_ep.thunder_hammer_return] run tp @s ~ ~ ~ facing entity @a[tag=same_id,limit=1,sort=nearest] eyes
execute at @s positioned ^ ^ ^0.45 as @e[tag=!same_id,type=!#svm_ep:technical,dx=0] run tag @s add hitby
execute at @s positioned ^ ^ ^0.45 if entity @e[tag=!same_id,type=!#svm_ep:technical,dx=0] run tag @s add hit
execute at @s positioned ^ ^ ^0.45 unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
execute if entity @a[tag=same_id,tag=svm_ep.lightning_user] run particle minecraft:electric_spark ~ ~ ~ 0.25 0.25 0.25 0 1

execute at @s run tp @s ^ ^ ^0.45

tag @s[tag=hit] add svm_ep.thunder_hammer_return

execute at @s run playsound minecraft:entity.player.attack.weak master @a[distance=..15] ~ ~1 ~ 0.65 0.5
execute at @s positioned ~ ~0.25 ~ positioned ^ ^ ^0.2 as @e[distance=..1.75,type=!#svm_ep:technical] run function svm_ep:items/tengu/tornado/hitby
execute at @s if block ^ ^ ^0.15 #svm_ep:no_physical_hitbox run tp @s ^ ^ ^0.15
execute at @s if block ^ ^ ^0.15 #svm_ep:no_physical_hitbox run tp @s ^ ^ ^0.15
execute at @s run tp @s ^ ^ ^0.05
execute at @s run tp @e[tag=svm_ep.tornado_display,limit=1,sort=nearest] ~ ~ ~


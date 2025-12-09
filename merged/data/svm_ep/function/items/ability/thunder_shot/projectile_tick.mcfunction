scoreboard players add @s svm_ep.lifetime 1
particle electric_spark ~ ~ ~ 1 1 1 0.3 5
playsound minecraft:entity.guardian.attack ambient @a[distance=..25] ~ ~ ~ 1 1.8 0.5

execute as @s[scores={svm_ep.lifetime=0}] at @s run function svm_ep:items/ability/thunder_shot/end
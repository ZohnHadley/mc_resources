
particle minecraft:explosion ~ ~ ~ 2 0.4 2 0 15
playsound minecraft:entity.generic.explode master @a[distance=..20] ~ ~ ~ 2 0.85 0.85
scoreboard players set @s svm_ep.lifetime 10000

scoreboard players add @a[distance=..5] svm_ep.shaking 5
scoreboard players add @a[distance=..15] svm_ep.shaking 4
scoreboard players add @a[distance=..30] svm_ep.shaking 3
scoreboard players add @a[distance=..50] svm_ep.shaking 8
tag @s add executor
function svm_ep:power/explosion/rexplode/visual

execute as @e[distance=..5,tag=!executor] run damage @s 150 minecraft:player_explosion by @n[tag=executor]
execute as @e[distance=..10,tag=!executor] run damage @s 50 minecraft:player_explosion by @n[tag=executor]
execute as @e[distance=..15,tag=!executor] run damage @s 25 minecraft:player_explosion by @n[tag=executor]
execute as @e[distance=..20,tag=!executor] run damage @s 10 minecraft:player_explosion by @n[tag=executor]
damage @s 150 minecraft:player_explosion by @s
scoreboard players add @a[distance=..5] svm_ep.shaking 25
scoreboard players add @a[distance=..15] svm_ep.shaking 10
scoreboard players add @a[distance=..25] svm_ep.shaking 10
scoreboard players reset @s svm_ep.using_move
tag @s remove executor
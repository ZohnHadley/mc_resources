execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players add @s svm_ep.lifetime 1
execute as @e[tag=!executor,dx=0] run damage @s 10 minecraft:mob_projectile by @e[tag=executor,limit=1]
tp @s ^ ^ ^0.7 ~ ~0.1

tp @s ^ ^ ^0.85 ~ ~
particle minecraft:reverse_portal ~ ~ ~ 1 1 1 1 5 force @a[distance=..125]


execute as @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run tag @s add hit
execute as @e[tag=!same_id,distance=..4.5,type=!#svm_ep:technical] run tag @s add hit
execute at @s positioned ^ ^ ^1 unless block ~ ~ ~ #svm_ep:no_physical_hitbox run function svm_ep:entity/projectile/5/erase

execute at @s positioned ^ ^ ^4 run summon marker ~ ~ ~ {Tags:["svm_ep.crack_erase","svm_ep.crack_4","svm_ep.crack"]}

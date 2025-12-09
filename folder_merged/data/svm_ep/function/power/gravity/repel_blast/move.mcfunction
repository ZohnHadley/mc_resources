execute at @s run tp @s ^ ^ ^0.35

tag @s add executor
execute at @s as @e[tag=!immune,dx=1,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!immune,distance=..2,type=!#svm_ep:technical] run tag @s add hitby
execute as @e[tag=hitby] at @s run function svm_ep:power/gravity/repel_blast/hitby
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players add @s svm_ep.lifetime 4
execute at @s positioned ^0.25 ^ ^-0.5 run summon marker ~ ~ ~ {Tags:["svm_ep.crack_1","svm_ep.crack"]}
execute at @s positioned ^-0.25 ^ ^-0.5 run summon marker ~ ~ ~ {Tags:["svm_ep.crack_1","svm_ep.crack"]}
execute at @s positioned ^ ^0.25 ^-0.5 run summon marker ~ ~ ~ {Tags:["svm_ep.crack_1","svm_ep.crack"]}
execute at @s positioned ^ ^-0.25 ^-0.5 run summon marker ~ ~ ~ {Tags:["svm_ep.crack_1","svm_ep.crack"]}
scoreboard players add @a[distance=..5] svm_ep.shaking 1

tag @s remove executor

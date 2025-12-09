scoreboard players set %STATE svm_ep.numbers 1


execute at @s run tp @s ^ ^ ^0.65 ~ ~0.35
execute at @s run tag @e[tag=!same_id,distance=..0.5,type=!#svm_ep:technical] add hitby
execute at @s run tag @e[tag=!same_id,dx=0,type=!#svm_ep:technical] add hitby
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set %STATE svm_ep.numbers -1

execute unless score %STATE svm_ep.numbers matches ..0 at @s run tp @s ^ ^ ^0.65 ~ ~0.35
execute unless score %STATE svm_ep.numbers matches ..0 at @s run tag @e[tag=!same_id,distance=..0.5,type=!#svm_ep:technical] add hitby
execute unless score %STATE svm_ep.numbers matches ..0 at @s run tag @e[tag=!same_id,dx=0,type=!#svm_ep:technical] add hitby
execute unless score %STATE svm_ep.numbers matches ..0 at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set %STATE svm_ep.numbers -2

execute as @e[tag=hitby] run function svm_ep:power/copy/cobweb_launch/hitby

execute unless score %STATE svm_ep.numbers matches ..0 run return 0

execute if score %STATE svm_ep.numbers matches -2 at @s run tp @s ^ ^ ^0.65 ~ ~0.35
tp @s ~ ~ ~
kill @s
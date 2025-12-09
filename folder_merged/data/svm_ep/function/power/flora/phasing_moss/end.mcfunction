function svm_ep:system/gamemode/set_to_previous
scoreboard players reset @s svm_ep.using_move
execute at @s run tp @s ^ ^ ^0.25
execute at @s positioned ~ ~1 ~ if block ~ ~ ~ #svm_ep:no_physical_hitbox align y run tp @s ~ ~ ~
execute at @s positioned ~ ~-1 ~ if block ~ ~ ~ #svm_ep:no_physical_hitbox align y run tp @s ~ ~ ~
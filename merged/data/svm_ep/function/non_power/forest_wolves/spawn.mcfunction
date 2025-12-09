tag @s add executor

execute at @s rotated ~ 0 positioned ^1 ^ ^-0.7 summon wolf at @s run function svm_ep:non_power/forest_wolves/setup_black
execute at @s rotated ~ 0 positioned ^-1 ^ ^-0.7 summon wolf at @s run function svm_ep:non_power/forest_wolves/setup_white

tag @s remove executor
execute at @s run playsound minecraft:entity.wolf.howl master @a[distance=..20] ~ ~ ~ 1 0.96
scoreboard players reset @s svm_ep.using_move
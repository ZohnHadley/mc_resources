execute at @s run tp @s ^ ^ ^0.35
execute at @s run function svm_ep:power/lightning/electric_string/particles
execute at @s positioned ^ ^ ^0.2 run function svm_ep:power/lightning/electric_string/particles
execute at @s positioned ^ ^ ^-0.2 run function svm_ep:power/lightning/electric_string/particles

execute at @s run particle minecraft:electric_spark ~ ~ ~ 0.3 0.3 0.3 2 1
execute at @s as @e[tag=!same_id,dx=1,type=!#svm_ep:technical] run function svm_ep:power/lightning/electric_string/hitby
execute at @s positioned ^0.2 ^0.2 ^ run function svm_ep:system/crack/summon_1
execute at @s positioned ^0.2 ^-0.2 ^ run function svm_ep:system/crack/summon_1
execute at @s positioned ^-0.2 ^0.2 ^ run function svm_ep:system/crack/summon_1
execute at @s positioned ^-0.2 ^-0.2 ^ run function svm_ep:system/crack/summon_1
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players add @s svm_ep.lifetime 5

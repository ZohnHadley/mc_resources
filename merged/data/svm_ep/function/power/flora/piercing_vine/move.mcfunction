execute at @s run tp @s ^ ^ ^0.7
function svm_ep:power/flora/flora_particle
execute positioned ^ ^ ^-0.175 run function svm_ep:power/flora/flora_particle
execute positioned ^ ^ ^-0.350 run function svm_ep:power/flora/flora_particle
execute positioned ^ ^ ^-0.525 run function svm_ep:power/flora/flora_particle
execute at @s as @e[tag=!same_id,dx=1,type=!#svm_ep:technical] run tag @s add hitby
execute at @s positioned ^0.2 ^0.2 ^ unless entity @e[tag=svm_ep.crack,distance=..0.5] run function svm_ep:system/crack/summon_1
execute at @s positioned ^0.2 ^-0.2 ^ unless entity @e[tag=svm_ep.crack,distance=..0.5] run function svm_ep:system/crack/summon_1
execute at @s positioned ^-0.2 ^0.2 ^ unless entity @e[tag=svm_ep.crack,distance=..0.5] run function svm_ep:system/crack/summon_1
execute at @s positioned ^-0.2 ^-0.2 ^ unless entity @e[tag=svm_ep.crack,distance=..0.5] run function svm_ep:system/crack/summon_1
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run kill @s

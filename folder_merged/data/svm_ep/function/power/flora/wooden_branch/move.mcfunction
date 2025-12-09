execute at @s run tp @s ^ ^ ^0.23
function svm_ep:power/flora/flora_particle
execute at @s as @e[tag=!same_id,distance=..5,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!same_id,dx=1,type=!#svm_ep:technical] run tag @s add hitby
function svm_ep:power/flora/tree_place/place_wood
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ #svm_ep:flora_temporary unless block ~ ~ ~ #minecraft:leaves run tag @s add end
execute at @s positioned ^0.4 ^0.4 ^ run function svm_ep:power/flora/tree_place/place_wood
execute at @s positioned ^0.4 ^-0.4 ^ run function svm_ep:power/flora/tree_place/place_wood
execute at @s positioned ^-0.4 ^0.4 ^ run function svm_ep:power/flora/tree_place/place_wood
execute at @s positioned ^-0.4 ^-0.4 ^ run function svm_ep:power/flora/tree_place/place_wood



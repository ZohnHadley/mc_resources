
scoreboard players add @s svm_ep.lifetime 3
execute at @s unless block ~ ~ ~ #svm_ep:flora_manipulation/leaves run return run kill @s

rotate @s facing ~ ~1.5 ~


execute at @s unless entity @e[tag=svm_ep.flora_manipulation.leaves,distance=..2.5] summon item_display run function svm_ep:power/flora/manipulation/type/leaves/shoot

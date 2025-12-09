execute as @s[scores={svm_ep.lifetime=50..}] run return 0
function svm_ep:power/flora/vine/hitbox/spawn
tp @s ^ ^ ^0.85
execute unless block ~ ~ ~ #svm_core:no_hitbox run scoreboard players set @s svm_ep.lifetime 249
execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,type=!#svm_core:technical] add hitby



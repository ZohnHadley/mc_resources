scoreboard players remove @s svm_ep.raycast_length 1
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.raycast_length -1

execute if entity @e[tag=!executor,dx=0,type=!#svm_ep:technical] run scoreboard players set @s svm_ep.raycast_length -2

execute as @s[scores={svm_ep.raycast_length=1..}] positioned ^ ^ ^0.67 run return run function svm_ep:power/water/manipulation/droplet/raycast
function svm_ep:power/water/manipulation/droplet/end

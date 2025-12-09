scoreboard players remove @s svm_ep.raycast_length 1

execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players reset @s svm_ep.raycast_length


execute as @s[scores={svm_ep.raycast_length=1..}] positioned ^ ^ ^0.7 run return run function svm_ep:power/gravity/field/display/raycast

execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox summon item_display run function svm_ep:power/gravity/field/block/setup
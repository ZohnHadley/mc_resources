scoreboard players remove @s svm_ep.raycast_length 1
scoreboard players add %DISTANCE svm_ep.numbers 1
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.raycast_length 0

execute as @s[scores={svm_ep.raycast_length=1..}] positioned ^ ^ ^0.5 run function svm_ep:power/water/manipulation/ice/raycast

execute if block ~ ~ ~ #minecraft:ice run function svm_ep:power/water/manipulation/ice/success
scoreboard players remove @s svm_ep.raycast_length 1


execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.raycast_length -1
execute if entity @e[tag=!executor,dx=0,type=!#svm_ep:technical] run scoreboard players set @s svm_ep.raycast_length -2



execute as @s[scores={svm_ep.raycast_length=1..}] positioned ^ ^ ^0.5 run return run function svm_ep:power/copy/teleportation/raycast


execute align y positioned ~ ~ ~ run tp @s ~ ~ ~
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.raycast_length -3
execute as @s[scores={svm_ep.raycast_length=-3}] run tp @s ^ ^ ^-0.5
execute at @s align y positioned ~ ~ ~ run tp @s ~ ~ ~
execute as @s[scores={svm_ep.raycast_length=0}] run function svm_ep:power/copy/teleportation/spread

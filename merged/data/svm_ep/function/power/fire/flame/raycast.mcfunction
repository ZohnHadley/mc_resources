scoreboard players remove @s svm_ep.raycast_length 1


execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.raycast_length -1
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=!executor,type=!#svm_ep:technical,dx=0] run scoreboard players set @s svm_ep.raycast_length -2


execute as @s[scores={svm_ep.raycast_length=1..}] positioned ^ ^ ^0.15 run return run function svm_ep:power/fire/flame/raycast

execute as @s positioned ^ ^ ^-0.15 run function svm_ep:power/fire/flame/end
execute as @s positioned ^ ^ ^ run function svm_ep:power/fire/flame/end


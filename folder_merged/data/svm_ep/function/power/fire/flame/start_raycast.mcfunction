scoreboard players set @s svm_ep.raycast_length 30
execute as @s[scores={svm_ep.p.fire_arms=1..}] run scoreboard players add @s svm_ep.raycast_length 40

tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^0.4 run function svm_ep:power/fire/flame/raycast
tag @s remove executor
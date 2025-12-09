scoreboard players add @s svm_ep.lifetime 1
particle minecraft:splash ~ ~ ~ 1.5 1.5 1.5 0.1 5
particle minecraft:bubble_pop ~ ~ ~ 1 1 1 0.15 5
execute as @s[tag=!svm_ep.active] run return run execute as @s[scores={svm_ep.lifetime=220..}] run function svm_ep:power/water/manipulation/pick_up/end

tag @s add executor



execute unless block ~ ~ ~ water run rotate @s ~ ~1.5

playsound minecraft:item.bucket.empty master @a[distance=..35] ~ ~ ~ 0.7 1.4 0.2

execute at @s run function svm_ep:power/water/manipulation/pick_up/move
execute at @s run function svm_ep:power/water/manipulation/pick_up/move


execute as @e[tag=hitby] run function svm_ep:power/water/manipulation/pick_up/hitby




tag @s remove executor
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run function svm_ep:power/water/manipulation/pick_up/end
scoreboard players remove @s[scores={svm_ep.lifetime=120..}] svm_ep.charge_length 1
execute as @s[scores={svm_ep.charge_length=..-1}] run function svm_ep:power/water/manipulation/pick_up/end

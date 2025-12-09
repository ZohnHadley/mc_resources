#
scoreboard players add @s svm_ep.lifetime 1
tag @s add executor



execute unless block ~ ~ ~ water run rotate @s ~ ~3

playsound minecraft:item.bucket.empty master @a[distance=..35] ~ ~ ~ 1 0.7 0.2
particle minecraft:splash ~ ~ ~ 2 2 2 0.1 15
particle minecraft:bubble_pop ~ ~ ~ 1.5 1.5 1.5 0.15 10

execute at @s run function svm_ep:power/water/manipulation/launch/move
execute at @s[scores={svm_ep.charge_length=5..}] run function svm_ep:power/water/manipulation/launch/move
execute at @s[scores={svm_ep.charge_length=15..}] run function svm_ep:power/water/manipulation/launch/move
execute at @s[scores={svm_ep.charge_length=30..}] run function svm_ep:power/water/manipulation/launch/move
execute at @s[scores={svm_ep.charge_length=45..}] run function svm_ep:power/water/manipulation/launch/move


execute as @e[tag=hitby] run function svm_ep:power/water/manipulation/launch/hitby




tag @s remove executor
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run function svm_ep:power/water/manipulation/launch/end
scoreboard players remove @s[scores={svm_ep.lifetime=40..}] svm_ep.charge_length 1
execute as @s[scores={svm_ep.charge_length=..-1}] run function svm_ep:power/water/manipulation/launch/end

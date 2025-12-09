tag @s add executor
execute at @s run function svm_ep:power/4fun/meteor/move
function svm_ep:power/4fun/meteor/move
function svm_ep:power/4fun/meteor/move
function svm_ep:power/4fun/meteor/move
function svm_ep:power/4fun/meteor/move
particle minecraft:smoke ~ ~ ~ 1.6 1.6 1.6 0.7 7
particle minecraft:flame ^ ^ ^1 0.05 0.05 0.05 1.7 10
particle minecraft:flame ^ ^ ^1 0.05 0.05 0.05 0.7 10
particle minecraft:flame ^ ^ ^1 0.05 0.05 0.05 0.3 10
playsound minecraft:entity.generic.burn master @a[distance=..35] ~ ~ ~ 1 2
execute at @s run particle minecraft:lava ~ ~ ~ 1.7 1.7 1.7 0 1 force @a

#execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}

execute as @s[scores={svm_ep.lifetime=4..}] at @s run function svm_ep:power/4fun/meteor/land
tag @s remove executor
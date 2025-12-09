scoreboard players add @s svm_ep.lifetime 1
tag @s add executor
#execute at @s run function svm_ep:power/flora/vine/hitbox/spawn
execute at @s run function svm_ep:power/flora/vine/motion/move
execute at @s run function svm_ep:power/flora/vine/motion/move

execute as @e[tag=hitby] run function svm_ep:power/flora/vine/motion/hitby
tag @s remove executor

kill @s[scores={svm_ep.lifetime=20..}]
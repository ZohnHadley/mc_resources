execute as @s[scores={svm_ep.using_move=890..}] unless predicate svm_ep:holding_ability run return run scoreboard players reset @s svm_ep.using_move
execute as @s[scores={svm_ep.using_move=875}] run scoreboard players add @s svm_ep.p.explosion_ability_07_delay 5200
execute as @s[scores={svm_ep.using_move=875}] run return run function svm_ep:power/explosion/rexplode/explode

execute as @s[scores={svm_ep.using_move=890}] run playsound minecraft:entity.creeper.primed master @a[distance=..50] ~ ~ ~ 1 0.9
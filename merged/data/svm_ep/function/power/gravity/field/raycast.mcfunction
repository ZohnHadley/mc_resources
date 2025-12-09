scoreboard players remove @s svm_ep.numbers 1
execute unless block ^ ^ ^0.55 #svm_ep:no_physical_hitbox run scoreboard players reset @s svm_ep.numbers


execute unless entity @s[scores={svm_ep.numbers=1..}] positioned ~ ~-0.5 ~ run particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:0.7f} ~ ~ ~ 0 0 0 0 1 force @s
execute unless dimension svm_ep:void as @s[tag=shoot] unless entity @s[scores={svm_ep.numbers=1..}] positioned ~ ~-0.5 ~ run function svm_ep:power/gravity/field/spawn

execute as @s[scores={svm_ep.numbers=1..}] positioned ^ ^ ^0.55 run function svm_ep:power/gravity/field/raycast

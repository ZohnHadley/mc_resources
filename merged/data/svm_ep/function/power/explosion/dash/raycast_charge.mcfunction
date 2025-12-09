scoreboard players remove @s svm_ep.numbers 1
execute unless block ^ ^ ^0.35 #svm_ep:no_physical_hitbox run scoreboard players reset @s svm_ep.numbers


execute unless entity @s[scores={svm_ep.numbers=1..}] positioned ~ ~-0.5 ~ run particle minecraft:dust{color:[18000000f,0.3f,0.1f],scale:1f} ~ ~ ~ 0 0 0 0 1 force @s
execute unless entity @s[scores={svm_ep.numbers=1..}] positioned ~ ~-0.5 ~ run particle minecraft:dust{color:[0.1f,0.1f,0.1f],scale:1f} ~ ~ ~ 0.1 0.1 0.1 0 1 force @s
execute unless entity @s[scores={svm_ep.numbers=1..}] positioned ~ ~-0.5 ~ run particle minecraft:dust{color:[0.22f,0.22f,0.22f],scale:1f} ~ ~ ~ 0.2 0.2 0.2 0 1 force @s


execute as @s[scores={svm_ep.numbers=1..}] positioned ^ ^ ^0.35 run function svm_ep:power/explosion/dash/raycast_charge

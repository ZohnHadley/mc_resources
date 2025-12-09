execute unless entity @s[scores={svm_ep.lifetime=4..}] run function svm_ep:power/4fun/meteor/fly
execute as @s[scores={svm_ep.lifetime=4..}] run function svm_ep:power/4fun/meteor/standby
execute at @s if block ~ ~-0.5 ~ #svm_ep:no_physical_hitbox run tp @s ~ ~-0.5 ~
execute at @s if block ~ ~-0.5 ~ #svm_ep:no_physical_hitbox run tp @s ~ ~-0.5 ~
execute at @s if block ~ ~ ~ water run scoreboard players add @s svm_ep.lifetime 1
execute at @s unless entity @p[distance=..400] run kill @s
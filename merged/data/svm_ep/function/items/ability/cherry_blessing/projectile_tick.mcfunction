tag @s add executor
scoreboard players add @s svm_ep.lifetime 1
execute at @s run tp @s ~ ~0.04 ~ ~20 ~
execute at @s positioned ^ ^ ^2.5 run particle minecraft:cherry_leaves ~ ~2 ~ 1 0.1 1 0.5 5
execute at @s[scores={svm_ep.lifetime=..40}] positioned ^ ^ ^2.5 align xyz positioned ~0.5 ~0.05 ~0.5 if block ~ ~ ~ minecraft:pink_petals run function svm_ep:items/ability/cherry_blessing/spawn
kill @s[scores={svm_ep.lifetime=40..}]
tag @s remove executor

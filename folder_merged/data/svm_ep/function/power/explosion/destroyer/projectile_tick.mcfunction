scoreboard players add @s svm_ep.lifetime 1
tp @s ^ ^ ^2.9

execute unless score doBlocksDestroy svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/if_true
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks

execute as @e[type=!#svm_ep:technical,distance=..15] run damage @s 20 minecraft:explosion
execute if predicate svm_ep:chance/25_percent run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 1.3

particle minecraft:explosion ~ ~ ~ 6 6 6 0 3 force @a[distance=..40]
kill @s[scores={svm_ep.lifetime=2..}]

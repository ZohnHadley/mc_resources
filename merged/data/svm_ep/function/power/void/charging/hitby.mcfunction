tag @s remove hitby
effect give @s minecraft:slowness 1 2 true
damage @s 1.5 minecraft:true by @e[tag=same_id,limit=1]
scoreboard players add @e[tag=executor] svm_ep.lifetime 10
scoreboard players remove @s[scores={svm_ep.projectile=1..}] svm_ep.projectile 5
kill @s[scores={svm_ep.projectile=..0}]
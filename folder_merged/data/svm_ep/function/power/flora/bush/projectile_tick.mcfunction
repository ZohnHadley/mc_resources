scoreboard players add @s svm_ep.lifetime 1


execute at @s[scores={svm_ep.lifetime=4..}] run playsound minecraft:block.grass.break block @a[distance=..20] ~ ~ ~ 1 1.4
kill @s[scores={svm_ep.lifetime=4..}]
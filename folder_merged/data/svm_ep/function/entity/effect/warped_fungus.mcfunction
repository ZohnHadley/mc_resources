scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.warped_fungus 1
scoreboard players set @s[scores={svm_ep.e.warped_fungus=500..}] svm_ep.e.warped_fungus 500

effect give @s minecraft:slowness 1 0 true
effect give @s minecraft:weakness 1 1 true
effect give @s minecraft:blindness 1 0 true
effect give @s minecraft:nausea 15 0 true

execute at @s if predicate svm_ep:chance/15_percent as @e[type=!#svm_ep:technical,distance=0.1..7,sort=random,limit=1] run damage @s 0.001 minecraft:mob_attack by @n
execute at @s if predicate svm_ep:chance/15_percent run particle minecraft:dust{color:[0f,1f,0.8f],scale:2f} ~ ~0.4 ~ 2 2 2 0 5

execute as @s[scores={svm_ep.e.warped_fungus=0}] run function svm_ep:entity/effect/warped_fungus_end
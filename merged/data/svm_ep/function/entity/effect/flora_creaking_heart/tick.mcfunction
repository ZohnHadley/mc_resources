scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.flora_creaking_heart 1


scoreboard players set @s[scores={svm_ep.p.flora_ability_32_delay=..501}] svm_ep.p.flora_ability_32_delay 501
tag @s add executor
execute at @s on attacker as @n[tag=executor,nbt={HurtTime:9s}] run function svm_ep:entity/effect/flora_creaking_heart/attacked
tag @s remove executor
execute at @s unless entity @e[distance=..30,tag=svm_ep.block.flora_creaking_heart] run scoreboard players set @s svm_ep.e.flora_creaking_heart 0
execute as @s[scores={svm_ep.e.flora_creaking_heart=..0}] run return run function svm_ep:entity/effect/flora_creaking_heart/end
effect give @s minecraft:resistance 1 99 true
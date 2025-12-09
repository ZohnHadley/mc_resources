tag @s add executor
execute at @s unless block ~ ~ ~ minecraft:creaking_heart run scoreboard players set @s svm_ep.numbers -5199
execute at @s run particle minecraft:dust{color:[0.4f,0.4f,0.4f],scale:2.5f} ~ ~ ~ 0.45 0.45 0.45 0 2

item replace entity @s container.0 with minecraft:creaking_heart[minecraft:item_model="svm_ep:block/flora_creaking_heart_marked"]

execute if predicate svm_ep:night at @s run particle minecraft:dust{color:[0.9f,0.45f,0.12f],scale:2} ~ ~ ~ 0.35 0.35 0.35 0 4
execute if predicate svm_ep:night as @e[scores={svm_ep.entity_id=1..},distance=..30,type=!#svm_ep:technical] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run function svm_ep:block/flora_creaking_heart/connected_mob

#ON DESTROY
execute as @s[scores={svm_ep.numbers=-5199}] if predicate svm_ep:night as @e[distance=..30,tag=svm_ep.block.flora_creaking_heart] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run function svm_ep:block/flora_creaking_heart/destroy
execute as @s[scores={svm_ep.numbers=-5199}] run function svm_ep:block/flora_creaking_heart/destroy

tag @s remove executor

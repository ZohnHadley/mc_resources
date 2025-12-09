tag @s add svm_ep.block.flora_creaking_heart
tag @s add svm_ep.block_8t
execute at @s align xyz run tp ~0.5 ~0.5 ~0.5

data merge entity @s {brightness:{sky:15,block:15}}
data modify entity @s transformation.scale[] set value 1.01

#item replace entity @s container.0 with warped_fungus_on_a_stick[item_model="svm_ep:block/flora_creaking_heart"]
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
playsound minecraft:entity.creaking.spawn master @a[distance=..25] ~ ~ ~ 1 0.95 0.5
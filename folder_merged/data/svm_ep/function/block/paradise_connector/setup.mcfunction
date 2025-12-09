setblock ~ ~ ~ minecraft:reinforced_deepslate
data merge entity @s {brightness:{sky:15,block:15}}
item replace entity @s container.0 with warped_fungus_on_a_stick[item_model="svm_ep:block/paradise_connector"]
scoreboard players set @s svm_ep.lifetime 5
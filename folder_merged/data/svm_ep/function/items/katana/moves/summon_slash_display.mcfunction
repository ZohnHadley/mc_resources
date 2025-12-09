tag @s add svm_ep.item_display 
data merge entity @s {item_display:"thirdperson_righthand"}
item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:slash"]
scoreboard players remove @s svm_ep.lifetime 14
execute at @s run function svm_ep:system/set_random_rotation
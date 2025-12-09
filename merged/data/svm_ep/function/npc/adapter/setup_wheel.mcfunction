tag @s add svm_ep.check_to_recall
tag @s add svm_ep.npc_adapter_wheel
tag @s add svm_ep.no_gravity
ride @s mount @n[tag=svm_ep.npc_adapter]
item replace entity @s contents with minecraft:golden_apple[minecraft:item_model="svm_ep:wheel_of_adaptation"]
data modify entity @s transformation.translation[1] set value 0.65
data merge entity @s {teleport_duration:2}
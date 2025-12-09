function svm_ep:system/set_random_rotation
tag @s add svm_ep.no_tick
tag @s add svm_ep.check_to_recall
data merge entity @s {block_state:{Name:"minecraft:cobweb"},transformation:{scale:[1.5f,1.5f,1.5f],translation:[-0.75f,-0.75f,-0.75f]}}

execute store result entity @s transformation.scale[] double 0.01 run random value 160..210

function svm_ep:system/set_random_rotation
tag @s add svm_ep.no_tick
tag @s add svm_ep.check_to_recall
item replace entity @s container.0 with ice

tag @s add repel
execute at @s unless entity @s[scores={svm_ep.p.gravity_low=1},tag=svm_ep.gravity_user] summon marker run function svm_ep:power/gravity/field/tp
execute at @s if entity @s[scores={svm_ep.p.gravity_low=1},tag=svm_ep.gravity_user] summon marker run function svm_ep:power/gravity/field/tp2
tag @s remove repel

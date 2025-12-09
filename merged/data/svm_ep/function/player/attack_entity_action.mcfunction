scoreboard players reset @s svm_ep.attack_entity_action



execute as @s[scores={svm_ep.using_move=1..100},tag=svm_ep.copy_user] run function svm_ep:power/copy/copy/attack_mob
execute as @s[scores={svm_ep.using_move=401..500},tag=svm_ep.copy_user] run function svm_ep:power/copy/poisonous_bite/attack_mob
execute as @s[scores={svm_ep.p.copy_withering_touch=1},tag=svm_ep.copy_user] run function svm_ep:power/copy/withering_touch/attack_mob
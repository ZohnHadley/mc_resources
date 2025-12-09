execute as @e[tag=attacker] if predicate svm_ep:strength0 run scoreboard players add @e[tag=attacked_entity] svm_ep.deal_damage 3
execute as @e[tag=attacker] if predicate svm_ep:strength1 run scoreboard players add @e[tag=attacked_entity] svm_ep.deal_damage 8
execute as @e[tag=attacker] if predicate svm_ep:strength2 run scoreboard players add @e[tag=attacked_entity] svm_ep.deal_damage 9
execute as @e[tag=attacker] if predicate svm_ep:weakness0 run scoreboard players remove @e[tag=attacked_entity] svm_ep.deal_damage 4
execute as @e[tag=attacker] if predicate svm_ep:weakness1 run scoreboard players remove @e[tag=attacked_entity] svm_ep.deal_damage 6
execute as @e[tag=attacker] if predicate svm_ep:weakness2 run scoreboard players remove @e[tag=attacked_entity] svm_ep.deal_damage 8
execute as @e[tag=attacker] if predicate svm_ep:weakness3 run scoreboard players remove @e[tag=attacked_entity] svm_ep.deal_damage 10
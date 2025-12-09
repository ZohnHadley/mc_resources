execute at @s summon minecraft:marker run function svm_ep:structures/cherry_island/loot
#execute if predicate svm_ep:chance/33_percent unless entity @s[scores={svm_ep.lifetime=5..}] run function svm_ep:structures/cherry_island/try_place_small

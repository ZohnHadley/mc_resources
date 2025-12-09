effect give @s minecraft:jump_boost 1 1 true

execute if score harpieWingsBoost svm_ep.gamerule matches 1 if predicate svm_ep:flying run function svm_ep:power/harpie/movement/flying

execute unless entity @s[scores={svm_ep.mana=1..}] run return run function svm_ep:power/harpie/movement/use
execute unless items entity @s armor.chest *[minecraft:custom_data~{svm_ep.harpie_wings:1b}] run function svm_ep:power/harpie/movement/use
scoreboard players add @s[scores={svm_ep.used_move=..180}] svm_ep.used_move 2

scoreboard players set @s svm_ep.e.harpie_wings 3
scoreboard players set @s svm_ep.effect 5

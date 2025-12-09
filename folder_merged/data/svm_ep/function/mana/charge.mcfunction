execute store result score %add svm_ep.mana_charge if items entity @s container.* *[minecraft:custom_data={svm_ep.item:{id:mana}}]
scoreboard players operation @s svm_ep.mana_charge += %add svm_ep.mana_charge
scoreboard players reset %add svm_ep.mana_charge
scoreboard players remove @s[scores={svm_ep.mana_boost=1..}] svm_ep.mana_boost 1

scoreboard players add @s[scores={svm_ep.used_move=..1}] svm_ep.mana_charge 35
scoreboard players add @s[scores={svm_ep.used_move=..220}] svm_ep.mana_charge 18
scoreboard players add @s[scores={svm_ep.used_move=..440}] svm_ep.mana_charge 13
scoreboard players add @s[scores={svm_ep.used_move=..880}] svm_ep.mana_charge 4
scoreboard players add @s[scores={svm_ep.used_move=..1100}] svm_ep.mana_charge 3
scoreboard players add @s svm_ep.mana_charge 1

scoreboard players add @s[scores={svm_ep.mana_boost=220..}] svm_ep.mana_charge 25
scoreboard players add @s[scores={svm_ep.mana_boost=130..}] svm_ep.mana_charge 25
scoreboard players add @s[scores={svm_ep.mana_boost=1..}] svm_ep.mana_charge 25
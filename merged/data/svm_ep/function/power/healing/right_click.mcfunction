#execute as @s[scores={svm_ep.holding_katana=2}] unless entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{svm_ep.mountain_katana:{}}}}]}] unless entity @s[scores={svm_ep.p.healing_ability_01_delay=1..}] as @s[scores={svm_ep.mana=25..}] run function svm_ep:power/healing/ability1
#execute as @s[scores={svm_ep.holding_katana=1}] unless entity @s[scores={svm_ep.p.healing_ability_02_delay=1..}] as @s[scores={svm_ep.mana=10..}] run function svm_ep:power/healing/ability2
#execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{svm_ep.mountain_katana:{}}}}]}] unless entity @s[scores={svm_ep.p.healing_ability_11_delay=1..}] as @s[scores={svm_ep.mana=50..}] run function svm_ep:power/healing/ability11



#execute as @s[scores={svm_ep.holding_gauntlet=2}] unless entity @s[scores={svm_ep.p.healing_ability_05_delay=1..}] as @s[scores={svm_ep.mana=35..}] run function svm_ep:power/healing/ability5
#execute as @s[scores={svm_ep.holding_gauntlet=1}] unless entity @s[scores={svm_ep.p.healing_ability_06_delay=1..}] as @s[scores={svm_ep.mana=20..}] run function svm_ep:power/healing/ability6
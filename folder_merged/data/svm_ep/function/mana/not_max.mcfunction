
execute unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:mana/charge


execute as @s[scores={svm_ep.mana_charge=100..}] run function svm_ep:mana/increase


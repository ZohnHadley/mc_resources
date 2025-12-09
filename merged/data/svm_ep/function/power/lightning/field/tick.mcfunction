execute if predicate svm_ep:thunder run scoreboard players add @s svm_ep.p.lightning_charge_level 16
execute at @s unless entity @s[scores={svm_ep.p.lightning_charge_level=60..}] run function svm_ep:power/lightning/field/charge/1
execute as @s[scores={svm_ep.p.lightning_charge_level=60..69}] run function svm_ep:power/lightning/field/charge/2
execute as @s[scores={svm_ep.p.lightning_charge_level=70..79}] run function svm_ep:power/lightning/field/charge/3
execute as @s[scores={svm_ep.p.lightning_charge_level=80..89}] run function svm_ep:power/lightning/field/charge/4
execute as @s[scores={svm_ep.p.lightning_charge_level=90..}] run function svm_ep:power/lightning/field/charge/5
execute if predicate svm_ep:thunder run scoreboard players remove @s svm_ep.p.lightning_charge_level 15

execute if predicate svm_ep:holding_ability run scoreboard players add @s[scores={svm_ep.mana=1..}] svm_ep.using_move 1
execute if predicate svm_ep:holding_ability run scoreboard players add @s[scores={svm_ep.mana=1..}] svm_ep.mana_drain 250
scoreboard players reset @s[scores={svm_ep.using_move=..1450}] svm_ep.using_move
scoreboard players add @s svm_ep.p.lightning_ability_17_delay 2
scoreboard players add @s svm_ep.used_move 2
execute at @s if predicate svm_ep:thunder run scoreboard players remove @s svm_ep.p.lightning_ability_17_delay 1
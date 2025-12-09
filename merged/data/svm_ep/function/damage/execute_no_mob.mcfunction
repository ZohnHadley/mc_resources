$execute if entity @e[tag=tester] run say $(damage)
$execute if score %0 svm_ep.numbers matches $(damage) run return 0
$damage @s $(damage) $(type)
scoreboard players reset @s svm_ep.deal_damage

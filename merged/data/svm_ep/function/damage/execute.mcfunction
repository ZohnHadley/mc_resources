$execute if score damageIndicators svm_ep.gamerule matches 1 at @s anchored eyes positioned ^ ^ ^0.1 summon text_display run function svm_ep:system/message/damage_display {"damage":"$(damage)"}
$execute if entity @e[tag=tester] run say $(damage)
$execute if score %0 svm_ep.numbers matches $(damage) run return 0
$damage @s $(damage) $(type) by $(attacker)
scoreboard players reset @s svm_ep.deal_damage

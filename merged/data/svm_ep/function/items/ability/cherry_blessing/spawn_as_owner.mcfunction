execute as @s[scores={svm_ep.mana=..10}] run return 0

scoreboard players add @s svm_ep.ability.cooldown.cherry_blessing 50
scoreboard players remove @s svm_ep.mana 10
scoreboard players set %fail svm_ep.numbers 0
scoreboard players add @s svm_ep.used_move 25

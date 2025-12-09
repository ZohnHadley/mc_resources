execute as @s[scores={svm_ep.numbers=1..2}] run function svm_ep:power/gravity/teleport/mob
execute as @s[scores={svm_ep.numbers=3..4}] run function svm_ep:power/gravity/teleport/mobs_and_items
#execute as @s[scores={svm_ep.numbers=4}] as @e[type=!#svm_ep:technical,tag=!executor,distance=..4] run function svm_ep:power/gravity/teleport/mob
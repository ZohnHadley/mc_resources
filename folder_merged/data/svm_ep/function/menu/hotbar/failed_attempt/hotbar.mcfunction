execute as @s[scores={svm_ep.menu=11}] run data modify storage svm_ep:ability_hotbar input.slot set value 1
execute as @s[scores={svm_ep.menu=12}] run data modify storage svm_ep:ability_hotbar input.slot set value 2


execute as @s[scores={svm_ep.menu=11..12}] run function svm_ep:menu/hotbar/save
execute as @s[scores={svm_ep.menu=13}] run trigger svm_ep.menu set 11000

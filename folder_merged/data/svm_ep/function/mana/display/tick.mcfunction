tag @s add executor
execute at @s as @e[scores={svm_ep.mana=1..},distance=0.1..150] at @s run function svm_ep:mana/display/display
tag @s remove executor

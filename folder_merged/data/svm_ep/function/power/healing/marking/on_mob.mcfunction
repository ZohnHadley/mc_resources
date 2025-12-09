
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^2 as @n[distance=..3,tag=!executor,type=!#svm_ep:technical] run function svm_ep:power/healing/marking/mark
tag @s remove executor

scoreboard players reset @s svm_ep.using_move
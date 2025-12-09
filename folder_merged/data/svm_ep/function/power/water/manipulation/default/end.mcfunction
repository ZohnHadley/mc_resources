tag @e[type=!#svm_ep:technical,tag=!executor,dx=0] add hitby
tag @e[type=!#svm_ep:technical,tag=!executor,distance=..0.5] add hitby

execute as @e[tag=hitby] run function svm_ep:power/water/manipulation/drown/hitby
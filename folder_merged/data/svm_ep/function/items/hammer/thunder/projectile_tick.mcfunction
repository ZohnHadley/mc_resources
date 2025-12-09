tag @s add executor

execute as @a if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

tag @s[tag=svm_ep.thunder_hammer_return] add svm_ep.thunder_hammer_return2

execute at @s unless entity @a[tag=same_id,distance=..100] run tag @s add svm_ep.thunder_hammer_return


execute as @s[tag=!hit] run function svm_ep:items/hammer/thunder/move
execute as @s[tag=!hit] run function svm_ep:items/hammer/thunder/move
execute as @s[tag=!hit] run function svm_ep:items/hammer/thunder/move
execute as @s[tag=svm_ep.thunder_hammer_return,tag=!svm_ep.thunder_hammer_return2] run function svm_ep:items/hammer/thunder/hit
execute at @s[tag=svm_ep.thunder_hammer_return] if entity @a[tag=same_id,dx=0] run function svm_ep:items/hammer/thunder/drop

execute at @s unless entity @a[tag=same_id] run function svm_ep:items/hammer/thunder/drop

tag @s remove hit
tag @s remove executor
tag @a remove same_id
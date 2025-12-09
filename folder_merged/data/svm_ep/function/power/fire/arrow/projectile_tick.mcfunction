tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.fire_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

execute as @s[tag=!hit] run function svm_ep:power/fire/arrow/move
execute as @s[tag=!hit] run function svm_ep:power/fire/arrow/move
execute as @s[tag=!hit] run function svm_ep:power/fire/arrow/move
execute as @s[tag=!hit] run function svm_ep:power/fire/arrow/move
execute as @s[tag=!hit] run function svm_ep:power/fire/arrow/move
execute as @s[tag=!hit] run function svm_ep:power/fire/arrow/move
execute as @s[tag=!hit] run function svm_ep:power/fire/arrow/move
execute as @s[tag=!hit] run function svm_ep:power/fire/arrow/move
execute as @s[tag=hit] at @s run function svm_ep:power/fire/arrow/hit
tag @s remove executor
tag @a remove same_id
kill @s[scores={svm_ep.lifetime=140..}]
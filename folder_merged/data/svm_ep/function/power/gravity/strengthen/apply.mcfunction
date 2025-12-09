#execute as @s[scores={svm_ep.numbers=4}] run scoreboard players set @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_color 1
#execute as @s[scores={svm_ep.numbers=1}] run scoreboard players set @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_color 1
execute as @s[scores={svm_ep.p.gravity_strengthen_type=1}] run function svm_ep:power/gravity/strengthen/field
execute as @s[scores={svm_ep.p.gravity_strengthen_type=2}] run function svm_ep:power/gravity/strengthen/block

execute as @s[scores={svm_ep.p.gravity_strengthen_type=3}] as @e[type=!#svm_ep:technical,tag=!executor,dx=0] run function svm_ep:power/gravity/strengthen/mob
execute as @s[scores={svm_ep.p.gravity_strengthen_type=3}] as @e[type=!#svm_ep:technical,tag=!executor,distance=..3] run function svm_ep:power/gravity/strengthen/mob
scoreboard players reset @s[scores={svm_ep.p.gravity_strengthen_type=3}] svm_ep.using_move
scoreboard players set @s[scores={svm_ep.p.gravity_strengthen_type=2}] svm_ep.p.gravity_ability_02_delay 160
scoreboard players set @s[scores={svm_ep.p.gravity_strengthen_type=3}] svm_ep.p.gravity_ability_02_delay 80

execute unless entity @e[tag=svm_ep.gravity_field] run scoreboard players reset @s[scores={svm_ep.p.gravity_strengthen_type=1}] svm_ep.using_move


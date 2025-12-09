tag @s add executor

scoreboard players add @s[tag=svm_ep.active] svm_ep.lifetime 1

tag @s add executor
execute as @e if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add immune
execute as @s[tag=!svm_ep.active] if entity @e[tag=immune,scores={svm_ep.using_move=101..200}] run scoreboard players remove @s svm_ep.lifetime 2
execute as @s[tag=!svm_ep.active] unless entity @e[tag=immune,scores={svm_ep.using_move=101..200}] run function svm_ep:power/gravity/repel_blast/shoot2
execute unless entity @e[tag=immune,scores={svm_ep.using_move=101..200}] run tag @s add svm_ep.active

execute at @s as @a[scores={svm_ep.p.gravity_repel_zone=1}] run tag @s add immune
execute at @s[tag=svm_ep.active] run function svm_ep:power/gravity/repel_blast/move
execute at @s[tag=svm_ep.active] run function svm_ep:power/gravity/repel_blast/move
execute at @s[tag=svm_ep.active] run function svm_ep:power/gravity/repel_blast/move
execute at @s[tag=svm_ep.active] run function svm_ep:power/gravity/repel_blast/move
execute at @s[tag=svm_ep.active] run function svm_ep:power/gravity/repel_blast/move
execute at @s[tag=svm_ep.active] run function svm_ep:power/gravity/repel_blast/move
execute at @s[tag=svm_ep.active] if entity @e[tag=svm_ep.gravity_pull,distance=..3.5] run function svm_ep:power/gravity/repel_blast/turn_to_blast
execute at @s[tag=svm_ep.active] if entity @e[tag=svm_ep.gravity_field,distance=..3.5] run function svm_ep:power/gravity/repel_blast/turn_to_field

tag @a remove immune
tag @s remove executor
execute at @s[tag=!svm_ep.active] run tp @s ~ ~ ~ ~23 ~

execute at @s[tag=!svm_ep.active] run particle minecraft:dust{color:[0.15f,0f,0f],scale:0.45f} ^ ^ ^0.2 0.03 0.03 0.03 0 2 force @a
execute at @s[tag=!svm_ep.active] run particle minecraft:dust{color:[0.15f,0f,0f],scale:0.55f} ^ ^ ^0.3 0.03 0.03 0.03 0 2 force @a
execute at @s[tag=!svm_ep.active] run particle minecraft:dust{color:[0.15f,0f,0f],scale:0.65f} ^ ^ ^0.4 0.03 0.03 0.03 0 2 force @a

execute at @s run particle minecraft:dust{color:[18000000f,0.71f,0.71f],scale:0.14f} ~ ~ ~ 0.08 0.08 0.08 0 6 force @a
execute at @s run particle minecraft:dust{color:[1f,0.1f,0.1f],scale:0.15f} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a
execute at @s run particle minecraft:dust{color:[0.5f,0f,0f],scale:0.25f} ~ ~ ~ 0.15 0.15 0.15 0 2 force @a
execute at @s run particle minecraft:dust{color:[0.15f,0f,0f],scale:0.35f} ~ ~ ~ 0.03 0.03 0.03 0 2 force @a

execute at @s run particle minecraft:dust{color:[18000000f,0.91f,0.91f],scale:0.64f} ~ ~ ~ 0 0 0 0 3 force @a


#tellraw @a ["",{"text":"XD ","color":"#858585"},{"score":{"name":"@s","objective":"svm_ep.lifetime"},"color":"#858585"}]

execute as @s[scores={svm_ep.lifetime=2..}] at @s run kill @s

tag @s remove executor

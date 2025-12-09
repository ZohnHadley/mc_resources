tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[scores={svm_ep.p.copy_shulker_bullet_targeted_by=1..},distance=..50] if score @s svm_ep.p.copy_shulker_bullet_targeted_by = @n[tag=executor] svm_ep.entity_id run rotate @n[tag=executor] facing entity @s eyes

execute at @s run tp @s ^ ^ ^0.45
execute at @s run tag @e[tag=!same_id,distance=..0.5,type=!#svm_ep:technical,type=!minecraft:shulker_bullet] add hitby
execute at @s run tag @e[tag=!same_id,dx=0,type=!#svm_ep:technical,type=!minecraft:shulker_bullet] add hitby


execute as @e[tag=hitby] run function svm_ep:power/copy/shulker_bullet/hitby





tag @s remove executor
execute as @s[scores={svm_ep.lifetime=250..}] on passengers run kill @s[type=!player]
kill @s[scores={svm_ep.lifetime=250..}]
execute on passengers run return 0
scoreboard players set @s svm_ep.lifetime 10000

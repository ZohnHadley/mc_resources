scoreboard players remove @s svm_ep.check_click 1
tag @s add executor
execute as @e[type=interaction] if score @s svm_ep.entity_id = @a[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s anchored eyes positioned ^ ^ ^1.33 run tp @e[tag=same_id] ~ ~-0.5 ~
execute unless entity @e[tag=same_id] run function svm_ep:system/click_check/spawn
scoreboard players set @e[tag=same_id] svm_ep.lifetime 0
scoreboard players set @s svm_ep.checked_click 1


tag @e[type=interaction] remove same_id
tag @s remove executor
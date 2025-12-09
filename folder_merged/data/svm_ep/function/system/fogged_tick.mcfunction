scoreboard players remove @s svm_ep.fogged 1
tag @s add executor
execute as @e[tag=svm_ep.fog_display] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute unless entity @e[tag=same_id] run scoreboard players set @s svm_ep.fog_size 16

execute as @s[scores={svm_ep.fog_size=1..}] at @s run function svm_ep:system/summon_fog0
execute at @s anchored eyes run tp @e[tag=same_id] ~ ~0.75 ~
tag @s remove executor
tag @e remove same_id
tag @s add executor
scoreboard players remove @s svm_ep.fog_size 1
execute summon minecraft:item_display run function svm_ep:system/summon_fog1
tag @s remove executor

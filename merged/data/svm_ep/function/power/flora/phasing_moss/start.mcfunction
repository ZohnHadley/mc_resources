function svm_ep:system/gamemode/save
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^1.15 summon item_display run function svm_ep:power/flora/phasing_moss/setup
execute anchored eyes positioned ^ ^ ^1 run function svm_ep:particle/impact/spawn
tag @s remove executor

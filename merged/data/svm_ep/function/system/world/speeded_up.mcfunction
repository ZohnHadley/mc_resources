
scoreboard players remove %WORLD_SPEED svm_ep.world_settings 30
execute store result score %WORLD_SPEED_RTS svm_ep.world_settings run gamerule randomTickSpeed

execute if score %WORLD_SPEED svm_ep.world_settings matches ..100 run gamerule randomTickSpeed 3
execute if score %WORLD_SPEED svm_ep.world_settings matches 100..300 run gamerule randomTickSpeed 4
execute if score %WORLD_SPEED svm_ep.world_settings matches 300..500 run gamerule randomTickSpeed 5
execute if score %WORLD_SPEED svm_ep.world_settings matches 500..800 run gamerule randomTickSpeed 7
execute if score %WORLD_SPEED svm_ep.world_settings matches 800..1100 run gamerule randomTickSpeed 10
execute if score %WORLD_SPEED svm_ep.world_settings matches 1100..1300 run gamerule randomTickSpeed 14
execute if score %WORLD_SPEED svm_ep.world_settings matches 1300..1500 run gamerule randomTickSpeed 20
execute if score %WORLD_SPEED svm_ep.world_settings matches 1500..1800 run gamerule randomTickSpeed 27
execute if score %WORLD_SPEED svm_ep.world_settings matches 1800.. run gamerule randomTickSpeed 37

execute if score %WORLD_SPEED svm_ep.world_settings matches 100.. as @e[tag=svm_ep.flora_oak_leaves,limit=13,sort=random] at @s run function svm_ep:power/flora/tree_place/place_leaf2

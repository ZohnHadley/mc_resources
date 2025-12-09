scoreboard players add @s svm_ep.chooser_chosen 1

execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.3
execute if score @s svm_ep.chooser_chosen >= %TOTAL_REGISTERED_POWERS svm_ep.world_settings run scoreboard players set @s svm_ep.chooser_chosen 1

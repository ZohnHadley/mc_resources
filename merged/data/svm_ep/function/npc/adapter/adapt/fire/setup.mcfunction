effect give @s minecraft:slowness 1 5 true
scoreboard players set @s svm_ep.npc.adapter.adapted 20

scoreboard players reset @s svm_ep.npc.adapter.adaptation.fire.progress
scoreboard players add @s svm_ep.npc.adapter.adaptation.fire.progress_to_make 80
scoreboard players add @s svm_ep.npc.adapter.adaptation.fire.lvl 1

effect give @s minecraft:fire_resistance infinite 0 true

execute if score %adaptation_message svm_ep.world_settings matches 1 run function svm_ep:system/message/adapted {id:"fire"}

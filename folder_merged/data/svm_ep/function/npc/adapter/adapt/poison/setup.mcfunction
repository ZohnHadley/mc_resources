
effect give @s minecraft:slowness 1 5 true
scoreboard players set @s svm_ep.npc.adapter.adapted 20

scoreboard players reset @s svm_ep.npc.adapter.adaptation.poison.progress
scoreboard players add @s svm_ep.npc.adapter.adaptation.poison.progress_to_make 80
scoreboard players add @s svm_ep.npc.adapter.adaptation.poison.lvl 1


execute if score %adaptation_message svm_ep.world_settings matches 1 run function svm_ep:system/message/adapted {id:"poison"}

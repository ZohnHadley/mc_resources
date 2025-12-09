effect give @s minecraft:slowness 1 5 true
scoreboard players set @s svm_ep.npc.adapter.adapted 20

scoreboard players reset @s svm_ep.npc.adapter.adaptation.strength.progress
scoreboard players add @s svm_ep.npc.adapter.adaptation.strength.progress_to_make 80
scoreboard players add @s svm_ep.npc.adapter.adaptation.strength.lvl 1



execute store result storage svm_ep:numbers adaptation_stats.attack_damage int 0.125 run scoreboard players get @s svm_ep.npc.adapter.adaptation.strength.lvl
attribute @s minecraft:attack_damage modifier remove svm_ep:adaptation

function svm_ep:npc/adapter/adapt/strength/apply with storage svm_ep:numbers adaptation_stats
execute if score %adaptation_message svm_ep.world_settings matches 1 run function svm_ep:system/message/adapted {id:"strength"}

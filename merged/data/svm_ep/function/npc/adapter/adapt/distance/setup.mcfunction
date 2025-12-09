effect give @s minecraft:slowness 1 5 true
scoreboard players set @s svm_ep.npc.adapter.adapted 20

scoreboard players reset @s svm_ep.npc.adapter.attacked_by_distance
scoreboard players add @s svm_ep.npc.adapter.adaptation.distance.progress 80
scoreboard players add @s svm_ep.npc.adapter.adaptation.distance.lvl 1



execute store result storage svm_ep:numbers adaptation_stats.step_height float 0.125 run scoreboard players get @s svm_ep.npc.adapter.adaptation.distance.lvl
execute store result storage svm_ep:numbers adaptation_stats.movement_speed float 0.05 run scoreboard players get @s svm_ep.npc.adapter.adaptation.distance.lvl
attribute @s minecraft:step_height modifier remove svm_ep:adaptation
attribute @s minecraft:movement_speed modifier remove svm_ep:adaptation

function svm_ep:npc/adapter/adapt/distance/apply with storage svm_ep:numbers adaptation_stats
execute if score %adaptation_message svm_ep.world_settings matches 1 run function svm_ep:system/message/adapted {id:"distance"}

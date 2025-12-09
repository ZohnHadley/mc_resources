effect give @s minecraft:slowness 1 5 true
scoreboard players set @s svm_ep.npc.adapter.adapted 20

scoreboard players reset @s svm_ep.npc.adapter.adaptation.not_on_ground.progress
scoreboard players add @s svm_ep.npc.adapter.adaptation.not_on_ground.progress_to_make 80
scoreboard players add @s svm_ep.npc.adapter.adaptation.not_on_ground.lvl 1


execute store result storage svm_ep:numbers adaptation_stats.fall_damage_multiplier float -0.025 run scoreboard players get @s svm_ep.npc.adapter.adaptation.not_on_ground.lvl
execute store result storage svm_ep:numbers adaptation_stats.safe_fall_distance float 0.025 run scoreboard players get @s svm_ep.npc.adapter.adaptation.not_on_ground.lvl
attribute @s minecraft:fall_damage_multiplier modifier remove svm_ep:adaptation
attribute @s minecraft:safe_fall_distance modifier remove svm_ep:adaptation

function svm_ep:npc/adapter/adapt/not_on_ground/apply with storage svm_ep:numbers adaptation_stats
execute if score %adaptation_message svm_ep.world_settings matches 1 run function svm_ep:system/message/adapted {id:"not_on_ground"}

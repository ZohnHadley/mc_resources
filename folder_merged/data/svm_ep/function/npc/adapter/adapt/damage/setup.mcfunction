effect give @s minecraft:slowness 1 5 true
scoreboard players set @s svm_ep.npc.adapter.adapted 20

scoreboard players reset @s svm_ep.npc.adapter.adaptation.damage.progress
scoreboard players add @s svm_ep.npc.adapter.adaptation.damage.progress_to_make 150
scoreboard players add @s svm_ep.npc.adapter.adaptation.damage.lvl 1



execute store result storage svm_ep:numbers adaptation_stats.resistance int 0.075 run scoreboard players get @s svm_ep.npc.adapter.adaptation.damage.lvl
execute store result storage svm_ep:numbers adaptation_stats.regeneration int 0.15 run scoreboard players get @s svm_ep.npc.adapter.adaptation.damage.lvl

function svm_ep:npc/adapter/adapt/damage/apply with storage svm_ep:numbers adaptation_stats
execute if score %adaptation_message svm_ep.world_settings matches 1 run function svm_ep:system/message/adapted {id:"damage"}

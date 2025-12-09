tag @s add svm_ep.npc
tag @s add svm_ep.npc_adapter
execute unless entity @s[scores={svm_ep.entity_id=1..}] run function svm_ep:system/new_entity
scoreboard players set @s svm_ep.npc.adapter.adaptation.distance.progress 150
scoreboard players set @s svm_ep.npc.adapter.adaptation.damage.progress_to_make 50
scoreboard players set @s svm_ep.npc.adapter.adaptation.not_on_ground.progress_to_make 280
scoreboard players set @s svm_ep.npc.adapter.adaptation.poison.progress_to_make 180
scoreboard players set @s svm_ep.npc.adapter.adaptation.fire.progress_to_make 280
scoreboard players set @s svm_ep.npc.adapter.adaptation.strength.progress_to_make 280


attribute @s minecraft:follow_range modifier add svm_ep:adaptation 100 add_value
attribute @s minecraft:max_health modifier add svm_ep:adaptation 100 add_value
execute store result entity @s Health int 1 run attribute @s minecraft:max_health get

execute summon minecraft:item_display run function svm_ep:npc/adapter/setup_wheel
data merge entity @s[type=minecraft:warden] {Brain:{memories:{"minecraft:is_emerging":{value:{},ttl:120L}}}}

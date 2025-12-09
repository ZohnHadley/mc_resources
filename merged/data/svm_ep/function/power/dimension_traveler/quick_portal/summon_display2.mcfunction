#execute at @s if entity @e[tag=svm_ep.bush_display,distance=..0.3] run kill @s
item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:portal_punch"]
tag @s add svm_ep.dimension_punch_portal_display
tp @s @e[tag=executor,limit=1]
tp @s ~ ~ ~
execute store result score @s svm_ep.deal_damage run attribute @e[tag=executor,limit=1] minecraft:attack_damage get
scoreboard players operation @s svm_ep.deal_damage *= %dimension_punch_damage_divisor svm_ep.world_settings
scoreboard players operation @s svm_ep.deal_damage /= %dimension_punch_damage_divisor svm_ep.world_settings

data merge entity @s {transformation:{scale:[0f,0f,0f]}}
data merge entity @s {interpolation_duration:1,start_interpolation:-1}
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
scoreboard players operation @s svm_ep.p.dimension_traveler_gate_destination = @n[tag=executor] svm_ep.p.dimension_traveler_gate_destination

particle minecraft:cloud ~ ~ ~ 0 0 0 0.8 50
execute at @s run playsound minecraft:entity.guardian.ambient master @a[distance=..15] ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.ender_eye.death master @a[distance=..15] ~ ~ ~ 0.6 1.5
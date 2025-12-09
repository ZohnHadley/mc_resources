#execute at @s if entity @e[tag=svm_ep.bush_display,distance=..0.3] run kill @s
item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:punch_impact"]
tag @s add svm_ep.punch_impact_display
tp @s @e[tag=executor,limit=1]
tp @s ~ ~ ~
data merge entity @s {transformation:{scale:[0f,0f,0f]}}
data merge entity @s {interpolation_duration:1,start_interpolation:-1}
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
particle minecraft:cloud ~ ~ ~ 0 0 0 1.5 20
execute at @s run playsound minecraft:entity.player.attack.knockback master @a[distance=..15] ~ ~ ~ 1.6 0.83

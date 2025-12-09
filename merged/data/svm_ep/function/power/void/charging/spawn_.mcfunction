tag @s add svm_ep.charging_void
scoreboard players set @s svm_ep.projectile 50
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
data merge entity @s {brightness:{sky:15,block:15},teleport_duration:1,transformation:{scale:[0.75f,0.75f,0.75f]},interpolation_duration:1,start_interpolation:-1}
data modify entity @s Rotation set from entity @e[tag=executor,limit=1] Rotation
item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:black_hole2"]
data modify entity @s CustomName set value '[{"text":"charging void"}]'
playsound minecraft:entity.ender_eye.death master @a[distance=..25] ~ ~ ~ 1.5 2
particle minecraft:smoke ~ ~ ~ 0.15 0.15 0.15 0.7 75
playsound minecraft:entity.elder_guardian.death master @a ~ ~ ~ 1.5 2
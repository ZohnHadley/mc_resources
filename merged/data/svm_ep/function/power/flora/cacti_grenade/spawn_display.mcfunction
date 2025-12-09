
summon item_display ~ ~ ~ {Tags:["new","svm_ep.cacti_grenade_display"]}
scoreboard players operation @n[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
data modify entity @n[tag=new] Rotation set from entity @s Rotation

scoreboard players set @n[tag=new] svm_ep.projectile 5
execute as @n[tag=new] run item replace entity @s contents with minecraft:cactus
data merge entity @n[tag=new] {teleport_duration:2}
ride @n[tag=svm_ep.cacti_grenade_display] mount @n[tag=svm_ep.cacti_grenade]

tag @n[tag=new] remove new
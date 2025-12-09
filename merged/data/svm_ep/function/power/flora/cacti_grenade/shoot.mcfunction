effect clear @s slowness

summon item_display ~ ~ ~ {Tags:["new","svm_ep.cacti_grenade"]}
scoreboard players operation @n[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
data modify entity @n[tag=new] Rotation set from entity @s Rotation
scoreboard players set @n[tag=new] svm_ep.projectile 1

tag @n[tag=new] remove new
function svm_ep:power/flora/cacti_grenade/spawn_display
playsound minecraft:entity.breeze.shoot master @a[distance=..25] ~ ~ ~ 0.35 1.5
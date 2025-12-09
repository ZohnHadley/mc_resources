scoreboard players set @s svm_ep.projectile 5
scoreboard players set @s svm_ep.projectile_id 3

item replace entity @s container.0 with minecraft:slime_block
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
data modify entity @s Rotation set from entity @n[tag=executor] Rotation
data merge entity @s {CustomName:'[{"text":"slime spit"}]',teleport_duration:1,transformation:{scale:[0.5f,0.5f,0.5f]},interpolation_duration:1,start_interpolation:-1}



playsound minecraft:entity.llama.spit master @a[distance=..30] ~ ~ ~ 1.2 1.06
playsound minecraft:entity.slime.attack master @a[distance=..25] ~ ~ ~ 1 0.8
playsound minecraft:entity.slime.jump master @a[distance=..20] ~ ~1 ~ 0.6 1.5
particle minecraft:item{item:slime_ball} ~ ~ ~ 0 0 0 0.6 20
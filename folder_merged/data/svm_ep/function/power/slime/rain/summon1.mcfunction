function svm_ep:system/set_random_rotation
tag @s add svm_ep.slime_spit
tag @s add svm_ep.slime_spit3
item replace entity @s container.0 with minecraft:slime_ball
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 1
scoreboard players set @s svm_ep.projectile_type 1

execute at @s run particle minecraft:sneeze ~ ~0.7 ~ 0 0 0 0.4 30
execute at @s run particle minecraft:item{item:slime_ball} ~ ~0.7 ~ 0 0 0 0.7 70
execute at @s run playsound minecraft:entity.slime.attack master @a[distance=..25] ~ ~ ~ 0.7 1.2
execute at @s run playsound minecraft:entity.slime.hurt master @a[distance=..20] ~ ~1 ~ 1.2 0

execute at @s run tp @s ~ ~ ~ ~ ~-100
function svm_ep:system/get_rotation
execute as @s[scores={rot.y=90}] run tp @s ~ ~ ~ ~ -90
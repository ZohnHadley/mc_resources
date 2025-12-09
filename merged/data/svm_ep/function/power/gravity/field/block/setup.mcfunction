summon marker ~ ~ ~ {Tags:["svm_ep.crack_erase","svm_ep.crack_2","svm_ep.crack"]}
kill @s[tag=svm_ep.gravity_field_stripe_block]
function svm_ep:system/set_random_rotation_non_player

scoreboard players set @s svm_ep.projectile 4
data merge entity @s {brightness:{sky:15,block:15},teleport_duration:4,transformation:{scale:[1.4f,1.4f,1.4f]},interpolation_duration:1,start_interpolation:-1}
execute store result entity @s transformation.scale[] double 0.01 run random value 30..250

tag @s add svm_ep.gravity_field_block
tag @s remove svm_ep.no_gravity

item replace entity @s contents with air
loot replace entity @s container.0 mine ~ ~-1 ~ minecraft:diamond_pickaxe[enchantments={silk_touch:1}]
scoreboard players remove @s svm_ep.lifetime 125
execute if items entity @s contents air run kill @s



particle minecraft:crit ~ ~ ~ 1 1 1 0.5 70
execute if predicate svm_ep:chance/30_percent run playsound minecraft:entity.wither.break_block master @a[distance=..30] ~ ~ ~ 0.15 .4 0.05
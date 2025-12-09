scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
scoreboard players operation @s svm_ep.kill_at = %WORLD svm_ep.tick
scoreboard players add @s svm_ep.kill_at 600

tag @s add svm_ep.black_hole
scoreboard players set @s svm_ep.projectile 100
data merge entity @s {view_range:10,teleport_duration:1,transformation:{scale:[0.5f,0.5f,0.5f]},interpolation_duration:1,start_interpolation:-1,brightness:{sky:15,block:15},item:{id:"warped_fungus_on_a_stick",Count:1b,components:{"item_model":"svm_ep:black_hole2"}}}

function svm_ep:system/set_random_rotation
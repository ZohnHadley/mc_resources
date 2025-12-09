scoreboard players reset @s svm_ep.using_move
execute align xyz positioned ~-2 ~-2 ~-2 as @n[dx=4,dy=4,dz=4,tag=svm_ep.flora_manipulation_cd.moss] run return 0

execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["svm_ep.flora_block_on_cooldown","svm_ep.flora_manipulation_cd.moss","svm_ep.temporary_marker"],Fire:-340}
scoreboard players set @n[tag=svm_ep.flora_manipulation_cd.moss] svm_ep.projectile 1
scoreboard players set @n[tag=svm_ep.flora_manipulation_cd.moss] svm_ep.projectile_type 2
scoreboard players operation @n[tag=svm_ep.flora_manipulation_cd.moss] svm_ep.entity_id = @s svm_ep.entity_id
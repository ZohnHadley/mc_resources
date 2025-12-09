tag @s add executor
execute summon item_display run function svm_ep:power/copy/shulker_bullet/setup
execute on attacker run scoreboard players operation @s svm_ep.p.copy_shulker_bullet_targeted_by = @n[tag=executor] svm_ep.entity_id
tag @s remove executor

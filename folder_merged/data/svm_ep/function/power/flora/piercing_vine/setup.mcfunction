
function svm_ep:system/set_random_rotation_non_player
execute if entity @n[tag=executor,scores={svm_ep.p.flora_piercing_vine_count=5..}] at @s run tp @s ^ ^ ^5
execute if entity @n[tag=executor,scores={svm_ep.p.flora_piercing_vine_count=4}] at @s run tp @s ^ ^ ^4
execute if entity @n[tag=executor,scores={svm_ep.p.flora_piercing_vine_count=3}] at @s run tp @s ^ ^ ^3
execute if entity @n[tag=executor,scores={svm_ep.p.flora_piercing_vine_count=2}] at @s run tp @s ^ ^ ^2
execute if entity @n[tag=executor,scores={svm_ep.p.flora_piercing_vine_count=1}] at @s run tp @s ^ ^ ^1
execute if entity @n[tag=executor,scores={svm_ep.p.flora_piercing_vine_count=..0}] at @s run tp @s ^ ^ ^0.2


tag @s add svm_ep.piercing_vine
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
data modify entity @s Rotation set from entity @n[tag=executor] Rotation
scoreboard players set @s svm_ep.projectile 3
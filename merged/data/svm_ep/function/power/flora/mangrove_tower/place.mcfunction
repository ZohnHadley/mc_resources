scoreboard players operation @s svm_ep.lifetime -= @n[tag=executor] svm_ep.raycast_length
scoreboard players operation @s svm_ep.charge_length = @n[tag=executor] svm_ep.charge_length
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players operation @s svm_ep.lifetime /= %mangrove_tower_windup_divisor svm_ep.world_settings
scoreboard players remove @s svm_ep.lifetime 5
scoreboard players set @s svm_ep.projectile 75
scoreboard players add @s svm_ep.charge_length 5

tag @s add svm_ep.mangrove_tower

function svm_ep:power/flora/selection/get_from_biome
function svm_ep:power/flora/selection/get_from_executor

execute at @s summon item_display run function svm_ep:power/flora/mangrove_tower/setup_motion
ride @s mount @n[tag=svm_ep.mangrove_tower_motion]
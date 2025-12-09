scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 2
function svm_ep:system/set_random_rotation
execute at @s run tp @s ^ ^ ^9
tag @s add svm_ep.flora_blooming_collect

scoreboard players operation @s svm_ep.entity_id = @e[tag=executor] svm_ep.entity_id
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~ ~

execute at @s run playsound minecraft:entity.allay.ambient_with_item master @a[distance=..30] ~ ~ ~ 1 1.1

#tellraw @a ["",{"score":{"name":"LordGacie","objective":"svm_ep.entity_id"}},{"text":" - MINE: "},{"score":{"name":"@s","objective":"svm_ep.entity_id"}}]
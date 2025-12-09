scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 5
tag @s add svm_ep.slime_barrier_projectile
tag @s add new
execute as @e[tag=executor,limit=1] at @s anchored eyes run tp @e[tag=new] @s
execute at @s run tp @s ^ ^ ^1.85
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor] svm_ep.entity_id
tag @s remove new


#tellraw @a ["",{"score":{"name":"LordGacie","objective":"svm_ep.entity_id"}},{"text":" - MINE: "},{"score":{"name":"@s","objective":"svm_ep.entity_id"}}]
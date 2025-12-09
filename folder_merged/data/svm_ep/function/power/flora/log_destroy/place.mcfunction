summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.flora_log_destroy","new"]}
scoreboard players operation @e[tag=new] svm_ep.p.flora_destroyed_logs -= @s svm_ep.level
scoreboard players remove @e[tag=new] svm_ep.p.flora_destroyed_logs 18
#execute as @e[tag=new] run tellraw @a {"score":{"name":"@s","objective":"svm_ep.p.flora_destroyed_logs"}}
tag @e remove new
function svm_ep:power/flora/log_destroy/destroy_around
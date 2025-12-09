tag @s remove end
tag @s remove end1

tag @s add executor
summon minecraft:marker ~ ~ ~ {Tags:["new","svm_ep.explosion_destroyer_charge"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
particle minecraft:dust{color:[0f,0f,1f],scale:4f} ~ ~ ~ 0 3 0 0 10
tag @e remove new
tag @s remove executor


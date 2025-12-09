particle dust{color:[0.45f,0.95f,0.4f],scale:1.5f} ~ ~ ~ 0.5 0.5 0.5 0 5
particle dust{color:[0.35f,0.8f,0.3f],scale:1.7f} ~ ~ ~ 1.2 1.2 1.2 0 5


summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.slime_spit2"]}
scoreboard players set @n[tag=svm_ep.slime_spit2] svm_ep.projectile 1
execute at @s run particle minecraft:item{item:slime_ball} ~ ~0.5 ~ 0 0 0 0.6 120
 
execute as @e[tag=hit] run function svm_ep:damage/deal_normal {"damage":"5","attacker":"@e[limit=1,tag=same_id]","type":"mob_attack"}
tag @e remove hit
kill @s

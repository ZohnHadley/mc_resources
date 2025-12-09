scoreboard players add @s svm_ep.lifetime 1
tag @s add executor

execute as @e[tag=svm_ep.slime_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


function svm_ep:power/slime/barrier/place
tp @s ^ ^ ^0.8
execute at @s unless block ~ ~0.75 ~ #svm_ep:no_physical_hitbox run tag @s add die
execute at @s if block ~ ~0.75 ~ slime_block run tag @s remove die
execute at @s as @e[tag=!same_id,type=!#svm_ep:technical,dx=0] run function svm_ep:power/slime/barrier/hit_by
execute at @s run particle minecraft:item{item:slime_ball} ~ ~0.5 ~ 1 1 1 0.2 10
tag @s remove executor
tag @e remove same_id

kill @s[tag=die]
kill @s[scores={svm_ep.lifetime=20..}]
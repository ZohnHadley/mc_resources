tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.lightning_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


execute at @s run particle minecraft:sonic_boom
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.8

function svm_ep:power/lightning/blast/move
execute as @s[scores={svm_ep.lifetime=4..}] run function svm_ep:power/lightning/blast/move
execute as @s[scores={svm_ep.lifetime=8..}] run function svm_ep:power/lightning/blast/move
execute as @s[scores={svm_ep.lifetime=12..}] run function svm_ep:power/lightning/blast/move
execute as @s[scores={svm_ep.lifetime=16..}] run function svm_ep:power/lightning/blast/move
execute as @s[scores={svm_ep.lifetime=20..}] run function svm_ep:power/lightning/blast/move
execute as @s[scores={svm_ep.lifetime=24..}] run function svm_ep:power/lightning/blast/move






tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=25..}]
tag @s add executor
execute as @e[tag=svm_ep.gravity_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

execute at @s[scores={svm_ep.lifetime=-15}] run function svm_ep:power/gravity/blast/tick/boom
execute at @s[scores={svm_ep.lifetime=-15}] run scoreboard players add @a[distance=..15] svm_ep.shaking 1

execute at @s[scores={svm_ep.lifetime=-30..}] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 0.7 0.8
function svm_ep:power/gravity/blast/move
function svm_ep:power/gravity/blast/move
function svm_ep:power/gravity/blast/move
function svm_ep:power/gravity/blast/move
function svm_ep:power/gravity/blast/move

tag @s remove executor
tag @e remove same_id
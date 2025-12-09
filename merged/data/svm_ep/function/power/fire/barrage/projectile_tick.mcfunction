tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.fire_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


execute at @s[scores={svm_ep.lifetime=5..}] run rotate @s ~ ~1.5
execute at @s[scores={svm_ep.lifetime=10..}] run rotate @s ~ ~3.5
execute at @s[scores={svm_ep.lifetime=20..}] run rotate @s ~ ~3.5
execute at @s[scores={svm_ep.lifetime=30..}] run rotate @s ~ ~3.5


execute at @s[tag=!hit,scores={svm_ep.lifetime=..20}] run function svm_ep:power/fire/barrage/move
execute at @s[tag=!hit,scores={svm_ep.lifetime=..30}] run function svm_ep:power/fire/barrage/move
execute at @s[tag=!hit,scores={svm_ep.lifetime=..40}] run function svm_ep:power/fire/barrage/move
execute at @s[tag=!hit] run function svm_ep:power/fire/barrage/move
execute at @s[tag=!hit] run function svm_ep:power/fire/barrage/move
execute at @s[tag=hit] run function svm_ep:power/fire/barrage/hit
tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=240..}]
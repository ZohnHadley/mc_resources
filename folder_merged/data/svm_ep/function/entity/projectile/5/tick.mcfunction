tag @s add executor
scoreboard players add @s svm_ep.lifetime 1

execute as @e[distance=..100,scores={svm_ep.entity_id=1..}] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run tag @s add same_id

data merge entity @s[scores={svm_ep.lifetime=2}] {transformation:{scale:[8f,8f,8f]},interpolation_duration:5,start_interpolation:-1}


execute at @s[scores={svm_ep.lifetime=15..}] run function svm_ep:entity/projectile/5/move
execute at @s[scores={svm_ep.lifetime=15..}] run function svm_ep:entity/projectile/5/move
execute at @s[scores={svm_ep.lifetime=15..}] run function svm_ep:entity/projectile/5/move
execute at @s[scores={svm_ep.lifetime=15..}] run function svm_ep:entity/projectile/5/move
execute at @s[scores={svm_ep.lifetime=15..}] run function svm_ep:entity/projectile/5/move
execute at @s[scores={svm_ep.lifetime=15..}] run function svm_ep:entity/projectile/5/move
execute as @e[tag=hit] run function svm_ep:entity/projectile/5/hit



tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=40..}]
execute unless entity @e[tag=svm_ep.fire_user,scores={svm_ep.p.fire_arms=1..}] run kill @s



execute at @s positioned ^ ^ ^2.3 run function svm_ep:power/fire/arms/particle
execute at @s run tp @s ~ ~ ~ ~120 ~
execute at @s positioned ^ ^ ^2.3 run function svm_ep:power/fire/arms/particle
execute at @s run tp @s ~ ~ ~ ~120 ~
execute at @s positioned ^ ^ ^2.3 run function svm_ep:power/fire/arms/particle
execute at @s run tp @s ~ ~ ~ ~120 ~

execute at @s run tp @s ~ ~ ~ ~12 ~


function svm_ep:system/get_rotation

execute as @s[scores={rot.y=..-45}] run scoreboard players set @s svm_ep.lifetime 0
execute as @s[scores={rot.y=45..}] run scoreboard players set @s svm_ep.lifetime 1
execute at @s run tp @s[scores={svm_ep.lifetime=0}] ~ ~ ~ ~ ~6
execute at @s run tp @s[scores={svm_ep.lifetime=1}] ~ ~ ~ ~ ~-6

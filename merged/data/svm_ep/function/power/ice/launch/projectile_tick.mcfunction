scoreboard players add @s[tag=launched] svm_ep.lifetime 1

tag @s add executor

execute as @e[tag=svm_ep.ice_user,distance=..40] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


execute as @s[tag=!launched] as @e[tag=same_id,scores={svm_ep.using_move=401..500}] at @s anchored eyes positioned ^ ^ ^2 as @e[tag=executor] run tp @s ~ ~ ~
execute as @s[tag=!launched] unless entity @e[tag=same_id,scores={svm_ep.using_move=401..500}] run function svm_ep:power/ice/launch/launch


execute as @s[tag=launched] run function svm_ep:power/ice/launch/tp
execute as @s[tag=launched] run function svm_ep:power/ice/launch/tp
execute at @s run rotate @s[scores={svm_ep.lifetime=10..}] ~ ~3
execute at @s run rotate @s[scores={svm_ep.lifetime=20..}] ~ ~4
execute at @s run rotate @s[scores={svm_ep.lifetime=30..}] ~ ~5


execute at @s[tag=hit] positioned ^ ^ ^-0.9 run function svm_ep:power/ice/launch/hit

tag @s remove executor
tag @a[distance=..30] remove same_id
kill @s[scores={svm_ep.lifetime=120..}]
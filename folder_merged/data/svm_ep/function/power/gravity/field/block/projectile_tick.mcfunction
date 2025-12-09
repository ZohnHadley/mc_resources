execute at @s unless entity @e[tag=svm_ep.gravity_field,distance=..2.5] positioned ~ ~-0.5 ~ if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ~ ~ ~
execute at @s unless entity @e[tag=svm_ep.gravity_field,distance=..2.5] positioned ~ ~-0.5 ~ if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ~ ~ ~
execute at @s unless entity @e[tag=svm_ep.gravity_field,distance=..2.5] positioned ~ ~-0.5 ~ if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ~ ~ ~
scoreboard players add @s svm_ep.lifetime 18
execute as @s[scores={svm_ep.lifetime=2250..}] run return run function svm_ep:power/gravity/field/block/on_end
#execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run function svm_ep:power/gravity/field/display/stripe/break_block
#execute as @s[tag=svm_ep.gravity_field_stripe_block] unless entity @n[tag=svm_ep.gravity_field,distance=..50] at @s run tp @s ~ ~-0.95 ~

tag @s add executor
tag @e[type=!#svm_ep:technical,distance=..1] add hitby
tag @e[type=!#svm_ep:technical,dx=0] add hitby
execute as @s[scores={svm_ep.lifetime=150..}] unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hitby

execute at @s as @e[tag=hitby] run function svm_ep:power/gravity/field/block/hitby
execute as @s[scores={svm_ep.lifetime=2250..}] run return 0
tag @s remove executor

execute unless entity @e[tag=svm_ep.gravity_field,distance=..2.5] run return run tp @s ^ ^ ^1.76 ~ ~6
scoreboard players remove @s svm_ep.lifetime 17

function svm_ep:system/set_random_rotation_non_player
execute at @s if entity @n[tag=svm_ep.gravity_field,distance=..3] run tp @s ^ ^ ^2.2 facing entity @n[tag=svm_ep.gravity_field]




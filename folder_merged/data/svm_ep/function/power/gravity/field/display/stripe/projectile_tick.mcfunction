scoreboard players add @s svm_ep.lifetime 1
kill @s[scores={svm_ep.lifetime=30..}]
#execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run function svm_ep:power/gravity/field/display/stripe/break_block
#execute as @s[tag=svm_ep.gravity_field_stripe_block] unless entity @n[tag=svm_ep.gravity_field,distance=..50] at @s run tp @s ~ ~-0.95 ~




execute at @s run rotate @s facing entity @n[tag=svm_ep.gravity_field]

execute at @s[scores={svm_ep.p.gravity_field_stripe_direction_x=-1}] run rotate @s facing ^-0.2 ^ ^.175
execute at @s[scores={svm_ep.p.gravity_field_stripe_direction_x=0}] run rotate @s facing ^-0.1 ^ ^.175
execute at @s[scores={svm_ep.p.gravity_field_stripe_direction_x=1}] run rotate @s facing ^0.1 ^ ^.175
execute at @s[scores={svm_ep.p.gravity_field_stripe_direction_x=2}] run rotate @s facing ^0.2 ^ ^.175

execute at @s[scores={svm_ep.p.gravity_field_stripe_direction_y=-1}] run rotate @s facing ^ ^-0.2 ^.175
execute at @s[scores={svm_ep.p.gravity_field_stripe_direction_y=0}] run rotate @s facing ^ ^-0.1 ^.175
execute at @s[scores={svm_ep.p.gravity_field_stripe_direction_y=1}] run rotate @s facing ^ ^0.1 ^.175
execute at @s[scores={svm_ep.p.gravity_field_stripe_direction_y=2}] run rotate @s facing ^ ^0.2 ^.175


execute at @s[tag=!svm_ep.gravity_field_stripe_block] run tp @s ^ ^ ^0.75




tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.void_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute if entity @e[tag=same_id,scores={svm_ep.using_move=1..100}] run scoreboard players remove @s svm_ep.lifetime 2
execute if entity @e[tag=same_id,scores={svm_ep.using_move=1..100}] run scoreboard players add @s svm_ep.p.void_charging_charge 1
execute as @e[tag=same_id,scores={svm_ep.using_move=1..100}] at @s anchored eyes positioned ^ ^0.2 ^1.75 run tp @e[tag=executor] ~ ~ ~
scoreboard players add @a[tag=same_id,scores={svm_ep.p.void_ability_02_delay=..100}] svm_ep.p.void_ability_02_delay 2
execute as @s[scores={svm_ep.p.void_charging_charge=60..}] run function svm_ep:power/void/charging/big
execute at @s as @s[tag=!svm_ep.void_manipulated] run function svm_ep:system/set_random_rotation
execute at @s as @s[tag=svm_ep.void_manipulated] run function svm_ep:power/void/charging/move
execute at @s as @s[tag=svm_ep.void_manipulated] run function svm_ep:power/void/charging/move
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players add @s svm_ep.lifetime 1
execute at @s positioned ~ ~ ~ run function svm_ep:erase_block
execute at @s as @e[tag=!same_id,dx=1,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!executor,scores={svm_ep.projectile=1..},distance=..2.3] run tag @s add hitby

execute at @s as @e[tag=!same_id,distance=..2,type=!#svm_ep:technical] run tag @s add hitby
execute at @s run scoreboard players add @a[distance=..10] svm_ep.shaking 1
execute at @s[tag=!svm_ep.void_manipulated] run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.05 0.6
execute at @s[tag=svm_ep.void_manipulated] run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.2 0.6

tag @s[scores={svm_ep.lifetime=18..}] add hit
execute at @s as @e[distance=..25,tag=hitby] run function svm_ep:power/void/charging/hitby 
execute at @s as @s[tag=hit] run function svm_ep:power/void/charging/hit
execute at @s run function svm_ep:power/void/charging/small_particle
tag @s remove executor
tag @a remove same_id

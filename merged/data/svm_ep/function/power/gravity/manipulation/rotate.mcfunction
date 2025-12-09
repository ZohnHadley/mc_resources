execute if entity @n[tag=executor,scores={svm_ep.selected_ability=5}] run scoreboard players add @s svm_ep.p.gravity_field_compress 1

execute as @s[scores={svm_ep.p.gravity_field_compress=15..}] run return run function svm_ep:power/gravity/manipulation/compress
tp @s ^ ^ ^0.43 facing entity @n[tag=rotator]
execute at @s if entity @n[tag=executor,distance=..25] run tp @s ^ ^ ^0.25 facing entity @n[tag=rotator]
execute at @s if entity @n[tag=executor,distance=..50] run tp @s ^ ^ ^0.25 facing entity @n[tag=rotator]

execute store result score %MANA_DRAIN_FROM_MOBS svm_ep.numbers if entity @e[tag=!executor,type=!#svm_ep:technical,distance=..5]
execute store result score %MANA_DRAIN_FROM_BLOCKS svm_ep.numbers if entity @e[tag=svm_ep.gravity_field_block,distance=..5]
execute at @s as @e[tag=!executor,type=!#svm_ep:technical,distance=..5] if predicate svm_ep:chance/50_percent run scoreboard players add @n[tag=svm_ep.gravity_field] svm_ep.lifetime 2
execute at @s as @e[tag=svm_ep.gravity_field_block,distance=..5] if predicate svm_ep:chance/20_percent run scoreboard players add @n[tag=svm_ep.gravity_field] svm_ep.lifetime 1

scoreboard players remove @s[tag=!svm_ep.strengthen_projectile] svm_ep.lifetime 5
scoreboard players set @s[scores={svm_ep.lifetime=38..}] svm_ep.lifetime 38
scoreboard players set @s[tag=svm_ep.gravity_field_blast] svm_ep.lifetime 15
execute as @s[tag=svm_ep.gravity_field_blast] run scoreboard players reset @n[tag=executor] svm_ep.using_move


scoreboard players operation %MANA_DRAIN_FROM_MOBS svm_ep.numbers *= @s svm_ep.p.gravity_field_strength
scoreboard players operation %MANA_DRAIN_FROM_MOBS svm_ep.numbers *= @s svm_ep.p.gravity_field_strength
scoreboard players operation %MANA_DRAIN_FROM_MOBS svm_ep.numbers /= %20 svm_ep.numbers

scoreboard players operation %MANA_DRAIN_FROM_BLOCKS svm_ep.numbers *= @s svm_ep.p.gravity_field_strength
scoreboard players operation %MANA_DRAIN_FROM_BLOCKS svm_ep.numbers /= %15 svm_ep.numbers



#tellraw @a {"score":{"name":"@s","objective":"svm_ep.numbers"}}
scoreboard players operation @n[tag=executor] svm_ep.mana_drain += %MANA_DRAIN_FROM_MOBS svm_ep.numbers
scoreboard players operation @n[tag=executor] svm_ep.mana_drain += %MANA_DRAIN_FROM_BLOCKS svm_ep.numbers
scoreboard players add @n[tag=executor] svm_ep.mana_drain 25
#scoreboard players set @s svm_ep.p.gravity_field_color 2


#tellraw @a {"score":{"name":"@n[tag=executor]","objective":"svm_ep.mana_drain"}}

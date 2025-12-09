tag @s add executor

tp @s @s
effect give @s[scores={svm_ep.using_move=..101498}] minecraft:slowness 1 4 true
effect give @s[scores={svm_ep.using_move=..101479}] minecraft:slowness 1 4 true

execute at @s[scores={svm_ep.using_move=101495}] run function svm_ep:non_power/hollow_purple/start
execute at @s[scores={svm_ep.using_move=101480}] summon minecraft:item_display run function svm_ep:entity/projectile/5/setup
execute at @s[scores={svm_ep.using_move=101480}] run playsound minecraft:entity.ender_eye.death master @a[distance=..55] ~ ~ ~ 1 0
execute at @s[scores={svm_ep.using_move=101480}] run playsound minecraft:entity.warden.emerge master @a[distance=..55] ~ ~ ~ 1 2
execute at @s[scores={svm_ep.using_move=101480}] run playsound minecraft:block.lava.pop master @a[distance=..125] ~ ~ ~ 1 2
execute at @s[scores={svm_ep.using_move=101490}] run playsound minecraft:block.water.ambient master @a[distance=..125] ~ ~ ~ 1 2
execute at @s[scores={svm_ep.using_move=101495}] run playsound minecraft:block.water.ambient master @a[distance=..125] ~ ~ ~ 1 0



execute at @s[scores={svm_ep.using_move=..101475}] run scoreboard players add @a[distance=..15] svm_ep.shaking 1

execute as @s[scores={svm_ep.using_move=101455}] run return run function svm_ep:non_power/hollow_purple/end

execute at @s as @e[tag=!executor,distance=..100,scores={svm_ep.projectile_id=4..5,svm_ep.entity_id=1..}] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run tag @s add same_id
tag @s remove executor
scoreboard players set @e[tag=same_id,scores={svm_ep.projectile_id=4}] svm_ep.lifetime 0
scoreboard players remove @e[tag=same_id,scores={svm_ep.projectile_id=5,svm_ep.lifetime=12..}] svm_ep.lifetime 1
execute as @s[scores={svm_ep.using_move=101478}] run kill @e[tag=same_id,scores={svm_ep.projectile_id=4}]
execute at @s anchored eyes positioned ^ ^-0.3 ^3 run tp @n[tag=same_id,scores={svm_ep.projectile_id=5,svm_ep.lifetime=..14}] ~ ~ ~
tag @e remove same_id
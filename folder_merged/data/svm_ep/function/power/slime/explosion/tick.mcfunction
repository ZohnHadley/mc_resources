scoreboard players add @s svm_ep.lifetime 1
tag @s add executor
execute as @s[scores={svm_ep.lifetime=1}] as @e[tag=svm_ep.slime_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

execute at @s[scores={svm_ep.lifetime=1}] as @e[tag=!same_id,type=!#svm_ep:technical,distance=..5] run damage @s 7 minecraft:player_attack by @e[tag=same_id,limit=1]
tag @s remove executor

tag @e remove same_id


execute at @s[scores={svm_ep.lifetime=1}] positioned ~ ~ ~ run function svm_ep:power/slime/place_slime_block

execute at @s[scores={svm_ep.lifetime=3..4}] positioned ~1 ~ ~ run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=3..4}] positioned ~-1 ~ ~ run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=3..4}] positioned ~ ~1 ~ run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=3..4}] positioned ~ ~-1 ~ run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=3..4}] positioned ~ ~ ~1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=3..4}] positioned ~ ~ ~-1 run function svm_ep:power/slime/place_slime_block

execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~1 ~1 ~ run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~ ~1 ~1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~-1 ~1 ~ run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~ ~1 ~-1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~1 ~-1 ~ run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~ ~-1 ~1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~-1 ~-1 ~ run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~ ~-1 ~-1 run function svm_ep:power/slime/place_slime_block

execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~1 ~ ~1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~1 ~ ~-1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~-1 ~ ~1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=5..6}] positioned ~-1 ~ ~-1 run function svm_ep:power/slime/place_slime_block


execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~1 ~1 ~1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~1 ~1 ~-1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~-1 ~1 ~1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~-1 ~1 ~-1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~1 ~-1 ~1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~1 ~-1 ~-1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~-1 ~-1 ~1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~-1 ~-1 ~-1 run function svm_ep:power/slime/place_slime_block
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~ ~ ~ run function svm_ep:power/slime/explosion/ring_3x3
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~ ~1 ~ run function svm_ep:power/slime/explosion/ring_3x3
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~ ~-1 ~ run function svm_ep:power/slime/explosion/ring_3x3

execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~ ~-2 ~ run function svm_ep:power/slime/explosion/square_3x3
execute at @s[scores={svm_ep.lifetime=7..8}] positioned ~ ~2 ~ run function svm_ep:power/slime/explosion/square_3x3
execute at @s[scores={svm_ep.lifetime=1}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..25] ~ ~ ~ 1 0.7
execute at @s[scores={svm_ep.lifetime=2}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..25] ~ ~ ~ 1 0.7
execute at @s[scores={svm_ep.lifetime=4}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..25] ~ ~ ~ 1 0.7
execute at @s[scores={svm_ep.lifetime=6}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..25] ~ ~ ~ 1 0.7
execute at @s[scores={svm_ep.lifetime=..4}] run particle minecraft:item{item:slime_ball} ~ ~0.5 ~ 0 0 0 0.4 200
execute at @s run kill @e[distance=..5,tag=svm_ep.slime_barrier_projectile]

kill @s[scores={svm_ep.lifetime=8}]

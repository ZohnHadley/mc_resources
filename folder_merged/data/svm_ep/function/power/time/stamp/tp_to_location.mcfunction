tag @s add executor
execute store result storage svm_ep:time_saves input.id int 1.0 run scoreboard players get @s svm_ep.entity_id
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 5 100
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 0.45 0
execute at @s run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..30] ~ ~ ~ 0.25 0

function svm_ep:power/time/stamp/search_storage with storage svm_ep:time_saves input

effect give @s minecraft:slow_falling 1 0 true
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 5 100 force @a
execute at @s run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..70] ~ ~ ~ 1 2 1
execute at @s run playsound minecraft:block.portal.travel master @a[distance=..30] ~ ~ ~ 0.05 1.8
scoreboard players set @s svm_ep.p.time_ability_04_delay 400


tag @s remove executor

execute at @s as @a[distance=..50] at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 1 0
execute at @s as @a[distance=..50] at @s run playsound minecraft:entity.bogged.ambient master @s ~ ~ ~ 1 0
scoreboard players set %INSTANT_LEAVES svm_ep.world_settings 1
scoreboard players operation %FORESTIFY_CLIMATE svm_ep.world_settings = @s svm_ep.p.flora_climate

tag @s add executor
execute at @s summon marker run function svm_ep:power/flora/forestify/spawn_vegetation2
execute at @s summon marker run function svm_ep:power/flora/forestify/spawn_vegetation2
execute at @s summon marker run function svm_ep:power/flora/forestify/spawn_vegetation2

scoreboard players set %INSTANT_LEAVES svm_ep.world_settings 0

tag @s remove executor

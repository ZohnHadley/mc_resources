execute at @s unless block ~ ~ ~ reinforced_deepslate run function svm_ep:block/paradise_connector/damage

execute at @s run particle minecraft:sonic_boom ~ ~2 ~ 0.32 0.32 0.32 0 2 force @a[distance=..50]
execute at @s run particle minecraft:sculk_soul ~ ~2 ~ 2 2 2 0.1 2 force @a[distance=..50]
execute at @s positioned ~ ~2 ~ as @e[type=!#svm_ep:technical,distance=..3] run function svm_ep:items/portal/teleport_entity
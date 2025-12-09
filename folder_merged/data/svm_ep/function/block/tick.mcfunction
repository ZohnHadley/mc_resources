#execute if score @s svm_ep.block_updated_at >= %WORLD input.tick run return 0
scoreboard players operation @s svm_ep.block_updated_at = %WORLD input.tick
execute if entity @a[tag=tester] run return run particle minecraft:end_rod ~ ~0.5 ~

execute as @s[tag=svm_ep.block.swordsmen_spawner] run return run function svm_ep:block/swordsmen_spawner/tick
execute as @s[tag=svm_ep.block.paradise_connector] run return run function svm_ep:block/paradise_connector/tick

execute if entity @a[tag=tester] run return run particle minecraft:end_rod ~ ~0.5 ~
tag @s add svm_ep.block_set
execute at @s positioned ~ ~0.45 ~ align xyz run tp @s ~0.5 ~0.5 ~0.5 0 0
item replace entity @s container.0 with stone
data merge entity @s {transformation:{scale:[1.0002f,1.0002f,1.0002f]},interpolation_duration:1,start_interpolation:-1}
execute as @s[tag=svm_ep.block.swordsmen_spawner] run function svm_ep:block/swordsmen_spawner/setup
execute as @s[tag=svm_ep.block.paradise_connector] run function svm_ep:block/paradise_connector/setup
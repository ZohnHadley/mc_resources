execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:1}}}} run return 0
execute if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run return 3
execute unless block ~ ~-1 ~ #svm_ep:flora_manipulation/moss unless block ~ ~ ~ #svm_ep:flora_manipulation/moss run return 4
#execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:0b}}} run return 0

execute at @s positioned ~ ~-0.15 ~ if block ~ ~ ~ #svm_ep:flora_manipulation/moss run tp @s ~ ~0.01 ~
playsound minecraft:block.moss.break block @a[distance=..25] ~ ~1 ~ 1 0 0
effect give @s minecraft:slowness 1 2 true
effect give @s minecraft:weakness 1 2 true
effect give @s minecraft:mining_fatigue 1 0 true

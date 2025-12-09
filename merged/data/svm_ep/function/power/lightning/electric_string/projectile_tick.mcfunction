tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.lightning_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

execute unless entity @s[scores={svm_ep.p.lightning_electric_string_direction=1..}] store result score @s svm_ep.p.lightning_electric_string_direction run random value 1..4



execute at @s run function svm_ep:power/lightning/electric_string/tick0
scoreboard players add @s[scores={svm_ep.p.lightning_electric_string_direction=1..4}] svm_ep.p.lightning_electric_string_direction 4

execute as @s[scores={svm_ep.lifetime=..2}] run function svm_ep:power/lightning/electric_string/move
execute as @s[scores={svm_ep.lifetime=..2}] run function svm_ep:power/lightning/electric_string/move
execute as @s[scores={svm_ep.lifetime=..2}] run function svm_ep:power/lightning/electric_string/move

execute at @s run function svm_ep:power/lightning/electric_string/tick0
execute at @s run function svm_ep:power/lightning/electric_string/tick0
scoreboard players remove @s[scores={svm_ep.p.lightning_electric_string_direction=5..8}] svm_ep.p.lightning_electric_string_direction 4

execute as @s[scores={svm_ep.lifetime=..2}] run function svm_ep:power/lightning/electric_string/move
execute as @s[scores={svm_ep.lifetime=..2}] run function svm_ep:power/lightning/electric_string/move
execute as @s[scores={svm_ep.lifetime=..2}] run function svm_ep:power/lightning/electric_string/move

execute at @s run function svm_ep:power/lightning/electric_string/tick0
scoreboard players reset @s svm_ep.p.lightning_electric_string_direction





tag @s remove had_direction
tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=0..}]
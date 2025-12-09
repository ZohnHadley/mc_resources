
tag @s remove svm_ep.in_domain
scoreboard players operation @s svm_ep.previous_dimension = @n[tag=end_domain] svm_ep.previous_dimension
#execute at @s run function svm_ep:system/dimension/spread

#tellraw @a ["",{"text":"X: "},{"score":{"name":"@s","objective":"svm_ep.domain_expansion_pre_x"}},{"text":" Y: "},{"score":{"name":"@s","objective":"svm_ep.domain_expansion_pre_y"}},{"text":" Z: "},{"score":{"name":"@s","objective":"svm_ep.domain_expansion_pre_z"}}]

execute as @s[type=!player] run return run function svm_ep:ability/domain_expansion/tp_out_non_player

execute at @s run function svm_ep:system/dimension/back_to_previous


execute store result storage svm_ep:coordinates input.x double 0.1 run scoreboard players get @s svm_ep.domain_expansion_pre_x
execute store result storage svm_ep:coordinates input.y double 0.1 run scoreboard players get @s svm_ep.domain_expansion_pre_y
execute store result storage svm_ep:coordinates input.z double 0.1 run scoreboard players get @s svm_ep.domain_expansion_pre_z
execute at @s run function svm_ep:system/test/macro/tp0 with storage svm_ep:coordinates input

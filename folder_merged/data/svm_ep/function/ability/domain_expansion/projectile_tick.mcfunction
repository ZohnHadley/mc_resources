scoreboard players add @s svm_ep.lifetime 1
scoreboard players add @s[tag=!svm_ep.active] svm_ep.domain_expansion_length 1
scoreboard players operation %DOMAIN_TYPE svm_ep.numbers = @s svm_ep.domain_expansion_type

tag @s add executor
execute as @s[tag=!svm_ep.active,scores={svm_ep.lifetime=4..}] positioned ~ ~24 ~ run function svm_ep:ability/domain_expansion/materialize_tick
execute as @s[tag=svm_ep.active] run function svm_ep:ability/domain_expansion/active
tag @s remove executor
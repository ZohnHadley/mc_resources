scoreboard players add @s svm_ep.lifetime 1
execute as @s[tag=!svm_ep.active] run function svm_ep:ability/domain_expansion/setup_inside
scoreboard players remove @s svm_ep.domain_expansion_length 1
tag @e[distance=..40,type=!#svm_ep:technical] add svm_ep.in_domain
tag @s add domain_inside
execute at @s if score @s svm_ep.domain_expansion_type matches 1 run function svm_ep:ability/domain_expansion/type/infinite_void/tick


tag @s remove domain_inside

execute if score @s svm_ep.domain_expansion_length2 < %WORLD svm_ep.tick run return run function svm_ep:ability/domain_expansion/end_inside
execute as @s[scores={svm_ep.domain_expansion_length=..0}] at @s run return run function svm_ep:ability/domain_expansion/end_inside

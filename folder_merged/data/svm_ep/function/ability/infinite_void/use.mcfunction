scoreboard players set @s svm_ep.domain_expansion_length 360
scoreboard players set @s svm_ep.domain_expansion_type 1
effect give @s minecraft:slowness 5 1 true

execute at @s run function svm_ep:ability/domain_expansion/place
function svm_ep:system/macro/command {command:"emotes play domain_expansion.infinite_void"}
#tellraw @a ["",{"text":"W"},{"score":{"name":"@s","objective":"svm_ep.domain_expansion_length"}}]
execute if score @s svm_ep.domain_expansion_length <= %WORLD svm_ep.tick run return run function svm_ep:ability/domain_expansion/end
execute as @e[type=!#svm_ep:technical,distance=..20] run function svm_ep:ability/domain_expansion/tp_inside
execute as @e[type=!#svm_ep:technical,distance=..22] run function svm_ep:ability/domain_expansion/check_mob

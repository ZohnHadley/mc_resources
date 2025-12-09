execute as @e[type=!#svm_ep:technical] if score @s svm_ep.entity_id = @n[tag=domain_inside] svm_ep.entity_id run function svm_ep:ability/domain_expansion/type/infinite_void/castor
execute as @s[scores={svm_ep.lifetime=51}] run fillbiome ~22 97 ~22 ~-22 110 ~-22 svm_ep:domain_expansion/infinite_void2
#execute as @s[scores={svm_ep.lifetime=38}] at @s run effect give @a[distance=..30] blindness 1 0 true
#execute as @s[scores={svm_ep.lifetime=46}] at @s run effect clear @a[distance=..30] blindness
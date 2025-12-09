schedule function svm_ep:7s 7s

execute if entity @e[tag=svm_ep.fix_coords] run function svm_ep:ability/domain_expansion/fix_coords
execute as @e[tag=svm_ep.domain_expansion_barrier,limit=3,sort=random] at @s positioned ^ ^ ^24 unless entity @e[tag=svm_ep.domain_expansion,distance=..10] run function svm_ep:ability/domain_expansion/end 
execute as @e[tag=svm_ep.in_domain] at @s unless entity @e[tag=svm_ep.domain_expansion_inside,distance=..80] run function svm_ep:ability/domain_expansion/kick_out

execute as @a[scores={svm_ep.ability_input=1}] unless entity @s[scores={svm_ep.give_ability_item=0}] run function svm_ep:player/ability_input/1/give
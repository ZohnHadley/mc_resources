
execute as @s[tag=svm_ep.check_connected_block] run return run function svm_ep:system/connected_block/entity_start
execute as @s[tag=svm_ep.flora_manipulated_block] run return run function svm_ep:power/flora/manipulation/type/wood/end_selection
execute as @s[tag=svm_ep.flora_tree_block] run return run function svm_ep:power/flora/tree_place/temporary/start
execute as @s[tag=svm_ep.domain_expansion_barrier,tag=!svm_ep.domain_expansion_barrier_recalled] run return run function svm_ep:ability/domain_expansion/recall_barrier


execute if predicate svm_ep:chance/25_percent positioned ~1 ~ ~1 run function svm_ep:power/slime/spit/place_slime_block
execute if predicate svm_ep:chance/25_percent positioned ~1 ~ ~-1 run function svm_ep:power/slime/spit/place_slime_block
execute if predicate svm_ep:chance/25_percent positioned ~-1 ~ ~1 run function svm_ep:power/slime/spit/place_slime_block
execute if predicate svm_ep:chance/25_percent positioned ~-1 ~ ~-1 run function svm_ep:power/slime/spit/place_slime_block

execute if predicate svm_ep:chance/25_percent positioned ~1 ~1 ~ run function svm_ep:power/slime/spit/place_slime_block
execute if predicate svm_ep:chance/25_percent positioned ~1 ~-1 ~ run function svm_ep:power/slime/spit/place_slime_block
execute if predicate svm_ep:chance/25_percent positioned ~-1 ~1 ~ run function svm_ep:power/slime/spit/place_slime_block
execute if predicate svm_ep:chance/25_percent positioned ~-1 ~-1 ~ run function svm_ep:power/slime/spit/place_slime_block

execute if predicate svm_ep:chance/25_percent positioned ~ ~1 ~1 run function svm_ep:power/slime/spit/place_slime_block
execute if predicate svm_ep:chance/25_percent positioned ~ ~1 ~-1 run function svm_ep:power/slime/spit/place_slime_block
execute if predicate svm_ep:chance/25_percent positioned ~ ~-1 ~1 run function svm_ep:power/slime/spit/place_slime_block
execute if predicate svm_ep:chance/25_percent positioned ~ ~-1 ~-1 run function svm_ep:power/slime/spit/place_slime_block
kill @s[scores={svm_ep.lifetime=6..}]

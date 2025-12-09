function svm_ep:system/crack/erase/spherical/3x3_w_chance
execute if predicate svm_ep:chance/33_percent positioned ^2 ^ ^ run function svm_ep:erase_block
execute if predicate svm_ep:chance/33_percent positioned ^-2 ^ ^ run function svm_ep:erase_block
execute if predicate svm_ep:chance/33_percent positioned ^ ^2 ^ run function svm_ep:erase_block
execute if predicate svm_ep:chance/33_percent positioned ^ ^-2 ^ run function svm_ep:erase_block

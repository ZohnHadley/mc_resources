function svm_ep:system/crack/spherical/3x3
execute if predicate svm_ep:chance/67_percent positioned ^ ^2 ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/33_percent positioned ^1 ^2 ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/33_percent positioned ^-1 ^2 ^ run function svm_ep:break_block

execute if predicate svm_ep:chance/67_percent positioned ^ ^-2 ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/33_percent positioned ^1 ^-2 ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/33_percent positioned ^-1 ^-2 ^ run function svm_ep:break_block

execute if predicate svm_ep:chance/67_percent positioned ^2 ^ ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/33_percent positioned ^2 ^1 ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/33_percent positioned ^2 ^-1 ^ run function svm_ep:break_block

execute if predicate svm_ep:chance/67_percent positioned ^-2 ^ ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/33_percent positioned ^-2 ^1 ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/33_percent positioned ^-2 ^-1 ^ run function svm_ep:break_block

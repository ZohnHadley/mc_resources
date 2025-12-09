function svm_ep:system/crack/spherical/3x3
execute positioned ^ ^2 ^ run function svm_ep:break_block
execute positioned ^1 ^2 ^ run function svm_ep:break_block
execute positioned ^-1 ^2 ^ run function svm_ep:break_block

execute positioned ^ ^-2 ^ run function svm_ep:break_block
execute positioned ^1 ^-2 ^ run function svm_ep:break_block
execute positioned ^-1 ^-2 ^ run function svm_ep:break_block

execute positioned ^2 ^ ^ run function svm_ep:break_block
execute positioned ^2 ^1 ^ run function svm_ep:break_block
execute positioned ^2 ^-1 ^ run function svm_ep:break_block

execute positioned ^-2 ^ ^ run function svm_ep:break_block
execute positioned ^-2 ^1 ^ run function svm_ep:break_block
execute positioned ^-2 ^-1 ^ run function svm_ep:break_block

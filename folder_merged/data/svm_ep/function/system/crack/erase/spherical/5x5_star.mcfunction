function svm_ep:system/crack/erase/spherical/3x3
execute positioned ^2 ^ ^ run function svm_ep:erase_block
execute positioned ^-2 ^ ^ run function svm_ep:erase_block
execute positioned ^ ^2 ^ run function svm_ep:erase_block
execute positioned ^ ^-2 ^ run function svm_ep:erase_block

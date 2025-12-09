
execute at @s[scores={svm_ep.lifetime=1}] run function svm_ep:system/crack/erase/destroy_1
execute at @s[scores={svm_ep.lifetime=2},tag=!svm_ep.crack_2_33] rotated 0 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:system/crack/erase/spherical/size/2
execute at @s[scores={svm_ep.lifetime=2},tag=svm_ep.crack_2_33] run function svm_ep:system/crack/erase/destroy_2_33

execute at @s[scores={svm_ep.lifetime=3}] rotated 0 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:system/crack/erase/spherical/size/3
execute at @s[scores={svm_ep.lifetime=4}] rotated 0 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:system/crack/erase/spherical/size/4
execute at @s[scores={svm_ep.lifetime=5}] rotated 0 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:system/crack/erase/spherical/size/5
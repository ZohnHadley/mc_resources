#execute at @s[scores={svm_ep.lifetime=1},tag=svm_ep.crack_erase] run function svm_ep:system/crack/destroy_2_100_02

kill @s[tag=svm_ep.crack_1,scores={svm_ep.lifetime=1}]
kill @s[tag=svm_ep.crack_2,scores={svm_ep.lifetime=2}]
kill @s[tag=svm_ep.crack_2_33,scores={svm_ep.lifetime=2}]
kill @s[tag=svm_ep.crack_3,scores={svm_ep.lifetime=3}]
kill @s[tag=svm_ep.crack_4,scores={svm_ep.lifetime=4}]
kill @s[tag=svm_ep.crack_5,scores={svm_ep.lifetime=5}]
kill @s[tag=svm_ep.crack_6,scores={svm_ep.lifetime=6}]
kill @s[scores={svm_ep.lifetime=7..}]
scoreboard players add @s svm_ep.lifetime 1

execute at @s[tag=svm_ep.crack_erase] run return run function svm_ep:system/crack/erase/tick
execute at @s[scores={svm_ep.lifetime=1}] run function svm_ep:system/crack/destroy_1
execute at @s[scores={svm_ep.lifetime=2},tag=!svm_ep.crack_2_33] rotated 0 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:system/crack/spherical/size/2
execute at @s[scores={svm_ep.lifetime=2},tag=svm_ep.crack_2_33] run function svm_ep:system/crack/destroy_2_33

execute at @s[scores={svm_ep.lifetime=3}] rotated 0 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:system/crack/spherical/size/3
execute at @s[scores={svm_ep.lifetime=4}] rotated 0 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:system/crack/spherical/size/4
execute at @s[scores={svm_ep.lifetime=5}] rotated 0 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:system/crack/spherical/size/5




execute as @s[tag=svm_ep.stripe] at @s run function svm_ep:system/crack/stripe_tick
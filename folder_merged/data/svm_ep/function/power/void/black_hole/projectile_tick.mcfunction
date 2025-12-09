scoreboard players add @s svm_ep.lifetime 1



execute at @s as @s[tag=svm_ep.void_manipulated] run tp @s ^ ^ ^3
tag @s remove svm_ep.void_manipulated

execute at @s[scores={svm_ep.lifetime=..19}] run function svm_ep:power/void/black_hole/size/0
execute at @s[scores={svm_ep.lifetime=20..39}] run function svm_ep:power/void/black_hole/size/1
execute at @s[scores={svm_ep.lifetime=40..59}] run function svm_ep:power/void/black_hole/size/2
execute at @s[scores={svm_ep.lifetime=60..79}] run function svm_ep:power/void/black_hole/size/3
execute at @s[scores={svm_ep.lifetime=80..99}] run function svm_ep:power/void/black_hole/size/4
execute at @s[scores={svm_ep.lifetime=100..119}] run function svm_ep:power/void/black_hole/size/5
execute at @s[scores={svm_ep.lifetime=120..}] run function svm_ep:power/void/black_hole/size/6

tag @s add executor
execute at @s as @a[scores={svm_ep.p.gravity_repel_zone=1}] run tag @s add immune
execute at @s as @e[type=marker,tag=svm_ep.crack] run tag @s add immune
#PULL
execute at @s[scores={svm_ep.lifetime=40..}] as @e[tag=!immune,tag=!svm_ep.no_gravity,type=!#svm_ep:gravity_no_repel,distance=1..50,tag=!executor,sort=nearest] run function svm_ep:power/void/black_hole/in_range
execute at @s[scores={svm_ep.lifetime=60..}] as @e[tag=!immune,tag=!svm_ep.no_gravity,type=!#svm_ep:gravity_no_repel,distance=1..60,tag=!executor,sort=nearest] run function svm_ep:power/void/black_hole/in_range
execute at @s[scores={svm_ep.lifetime=80..}] as @e[tag=!immune,tag=!svm_ep.no_gravity,type=!#svm_ep:gravity_no_repel,distance=1..70,tag=!executor,sort=nearest] run function svm_ep:power/void/black_hole/in_range
execute at @s[scores={svm_ep.lifetime=100..}] as @e[tag=!immune,tag=!svm_ep.no_gravity,type=!#svm_ep:gravity_no_repel,distance=1..80,tag=!executor,sort=nearest] run function svm_ep:power/void/black_hole/in_range
execute at @s[scores={svm_ep.lifetime=120..}] as @e[tag=!immune,tag=!svm_ep.no_gravity,type=!#svm_ep:gravity_no_repel,distance=1..90,tag=!executor,sort=nearest] run function svm_ep:power/void/black_hole/in_range
tag @a remove immune
tag @s remove executor

data merge entity @s[scores={svm_ep.lifetime=3}] {brightness:{sky:15,block:15},teleport_duration:1,transformation:{scale:[56.25f,56.25f,56.25f]},interpolation_duration:580,start_interpolation:-1}
data merge entity @s[scores={svm_ep.lifetime=584}] {brightness:{sky:15,block:15},teleport_duration:1,transformation:{scale:[0f,0f,0f]},interpolation_duration:20,start_interpolation:-1}
kill @s[scores={svm_ep.lifetime=750..}]
scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.infinite_void_fov 1

scoreboard players set @s svm_ep.using_move 31514360
attribute @s minecraft:movement_speed modifier remove svm_ep.e.infinite_void_fov
attribute @s[scores={svm_ep.e.infinite_void_fov=..61}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 1.4 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..63}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 1.3 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..65}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 1.2 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..67}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 1.1 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..69}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 1 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..71}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 0.9 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..73}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 0.8 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..75}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 0.7 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..77}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 0.6 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..79}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 0.5 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..81}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 0.4 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..83}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 0.3 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..85}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 0.2 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..87}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 0.1 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..89}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov 0.0 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..91}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov -0.2 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..93}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov -0.4 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..95}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov -0.6 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..97}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov -0.8 add_multiplied_total
attribute @s[scores={svm_ep.e.infinite_void_fov=..99}] minecraft:movement_speed modifier add svm_ep.e.infinite_void_fov -1 add_multiplied_total
scoreboard players add @s svm_ep.shaking 2
scoreboard players set @s[scores={svm_ep.e.infinite_void_fov=69}] svm_ep.shaking 0
attribute @s[scores={svm_ep.e.infinite_void_fov=69}] minecraft:movement_speed modifier remove svm_ep.e.infinite_void_fov
stopsound @s[scores={svm_ep.e.infinite_void_fov=71}]
execute at @s[scores={svm_ep.e.infinite_void_fov=..69}] run playsound minecraft:entity.warden.attack_impact master @s ~ ~ ~ 2 0
execute at @s[scores={svm_ep.e.infinite_void_fov=..69}] run playsound minecraft:entity.warden.attack_impact master @s ~ ~ ~ 2 1
execute at @s[scores={svm_ep.e.infinite_void_fov=..69}] run playsound minecraft:entity.warden.attack_impact master @s ~ ~ ~ 2 2
execute at @s[scores={svm_ep.e.infinite_void_fov=..69}] run playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 0.2 2

scoreboard players reset @s[scores={svm_ep.e.infinite_void_fov=..69}] svm_ep.e.infinite_void_fov

tp @s @s
effect clear @s[scores={svm_ep.e.infinite_void_fov=100..105}] minecraft:blindness
#execute at @s run rotate @s facing entity @n[tag=svm_ep.domain_expansion_inside]


execute as @s[scores={svm_ep.e.infinite_void_fov=..71}] run return 0
execute at @s[scores={svm_ep.e.infinite_void_fov=..96}] run playsound minecraft:entity.breeze.inhale master @s ~ ~ ~ 0.2 1.2
execute at @s[scores={svm_ep.e.infinite_void_fov=..93}] run playsound minecraft:entity.breeze.inhale master @s ~ ~ ~ 0.4 1.5
execute at @s[scores={svm_ep.e.infinite_void_fov=..90}] run playsound minecraft:entity.breeze.inhale master @s ~ ~ ~ 0.6 1.7
execute at @s[scores={svm_ep.e.infinite_void_fov=..85}] run playsound minecraft:entity.breeze.inhale master @s ~ ~ ~ 0.8 2

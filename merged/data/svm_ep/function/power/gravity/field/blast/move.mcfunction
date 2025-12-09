tp @s ^ ^ ^0.6
tag @e[distance=..5,tag=svm_ep.gravity_field_block] add hitby
tag @e[distance=..3,type=!#svm_ep:gravity_no_repel,type=!#svm_ep:technical,tag=!svm_ep.no_gravity,tag=!immune] add hitby
tag @e[dx=0,type=!#svm_ep:gravity_no_repel,type=!#svm_ep:technical,tag=!svm_ep.no_gravity,tag=!immune] add hitby
execute if block ~ ~ ~ #svm_ep:no_physical_hitbox run return 0
execute summon item_display run function svm_ep:power/gravity/field/block/setup
execute as @s[scores={svm_ep.p.gravity_field_color=2}] run particle minecraft:sonic_boom ~ ~ ~ 0.4 0.4 0.4 0 1
playsound minecraft:entity.warden.sonic_boom master @a[distance=..75] ~ ~ ~ 0.5 1.3 0.1
scoreboard players add @s svm_ep.lifetime 1


execute at @s as @e[tag=!same_id,type=!#svm_ep:technical,dx=0] run function svm_ep:power/harpie/razor/hit_by
tag @s remove hit
tag @s remove svm_ep.active
tp @s ~ ~ ~
scoreboard players set @s svm_ep.lifetime 125
function svm_ep:system/set_random_rotation_non_player
playsound minecraft:entity.breeze.deflect master @a[distance=..44] ~ ~ ~ 0.6 0
execute at @s if block ~ ~ ~ #svm_ep:no_physical_hitbox run return 0
execute at @s run particle minecraft:item{item:feather} ~ ~ ~ 0 0 0 0.3 10
execute at @s run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0.6 1

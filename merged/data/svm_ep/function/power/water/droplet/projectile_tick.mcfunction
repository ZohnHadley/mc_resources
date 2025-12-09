execute as @s[tag=svm_ep.water_pick_up] run return run function svm_ep:power/water/manipulation/pick_up/projectile_tick

tag @s add executor

scoreboard players add @s svm_ep.lifetime 1


tag @e[tag=!same_id,distance=..0.5,type=!#svm_ep:technical] add hitby
tag @e[tag=!same_id,dx=0,type=!#svm_ep:technical] add hitby


function svm_ep:power/water/droplet/display
execute as @s[tag=!svm_ep.active] run function svm_ep:power/water/droplet/still
execute as @s[tag=svm_ep.active] run function svm_ep:power/water/droplet/launched
execute as @e[tag=hitby] run function svm_ep:power/water/droplet/hitby




tag @s remove executor
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run function svm_ep:power/water/droplet/end
execute as @s[scores={svm_ep.lifetime=350..}] run function svm_ep:power/water/droplet/end
execute as @s[scores={svm_ep.lifetime=250..260}] run tp @s ~ ~0.35 ~
execute as @s[scores={svm_ep.lifetime=255..}] run tp @s ~ ~-0.3 ~
execute as @s[scores={svm_ep.lifetime=262..}] run tp @s ~ ~-0.45 ~
execute as @s[scores={svm_ep.lifetime=272..}] run tp @s ~ ~-0.75 ~

scoreboard players add @s svm_ep.lifetime 1

execute as @s[scores={svm_ep.lifetime=..2}] run return run execute as @s[scores={svm_ep.lifetime=1}] on vehicle run tp @s ~ ~-10000 ~
execute as @s[scores={svm_ep.lifetime=1000..}] run return run function svm_ep:power/flora/vine/hitbox/on_end

scoreboard players set @s[scores={svm_ep.lifetime=200..}] svm_ep.lifetime 1000

execute on attacker as @n[tag=svm_ep.flora_vine_hitbox] run return run function svm_ep:power/flora/vine/hitbox/hit


execute unless entity @p[distance=..5] unless entity @e[tag=svm_ep.flora_vine_hitbox,tag=!svm_ep.flora_vine_is_hitbox,distance=..5] run return 0

#execute positioned ^ ^ ^-0.85 if block ~ ~ ~ #svm_core:no_hitbox unless entity @e[tag=svm_ep.flora_vine_is_hitbox,distance=..0.35] run say back
execute positioned ^ ^ ^-0.85 if block ~ ~ ~ #svm_core:no_hitbox unless block ~ ~ ~ #svm_ep:flora_manipulation/vines unless entity @e[tag=svm_ep.flora_vine_is_hitbox,distance=..0.35] run scoreboard players set @s svm_ep.lifetime 1000
#execute positioned ^ ^ ^0.85 if block ~ ~ ~ #svm_core:no_hitbox unless entity @e[tag=svm_ep.flora_vine_is_hitbox,distance=..0.35] run say front
execute positioned ^ ^ ^0.85 if block ~ ~ ~ #svm_core:no_hitbox unless block ~ ~ ~ #svm_ep:flora_manipulation/vines unless entity @e[tag=svm_ep.flora_vine_is_hitbox,distance=..0.35] run scoreboard players set @s svm_ep.lifetime 1000



scoreboard players add @s svm_ep.lifetime 1
execute at @e[tag=svm_ep.dimension_quick_portal_display,limit=1,sort=nearest] run tp @s ~ ~-0.5 ~

tag @s add executor
execute on attacker at @s anchored eyes run function svm_ep:power/dimension_traveler/quick_portal/start_ray2

tag @s remove executor
kill @s[scores={svm_ep.lifetime=3..}]
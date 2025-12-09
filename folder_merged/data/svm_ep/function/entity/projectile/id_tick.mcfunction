$execute as @s[tag=!svm_ep.projectile_display] run return run function svm_ep:entity/projectile/$(id)/tick
tag @s add executor 
execute on vehicle run tag @s add controller
execute unless entity @e[tag=controller] run kill @s
execute on vehicle run tag @s remove controller
tag @s remove executor
$function svm_ep:entity/projectile/$(id)/tick_display
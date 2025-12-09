kill @e[tag=executor]

tag @s add executor
execute as @e[tag=svm_ep.dimension_quick_portal_display] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run scoreboard players set @s[scores={svm_ep.lifetime=..76}] svm_ep.lifetime 76
execute as @e[tag=svm_ep.dimension_quick_portal_display] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run data merge entity @s {transformation:{scale:[2.75f,2.75f,2.75f]},interpolation_duration:6,start_interpolation:-1}
execute as @e[tag=svm_ep.dimension_quick_portal_display] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add svm_ep.stop
function svm_ep:power/dimension_traveler/quick_portal/raycast2

tag @s remove executor
tag @s remove end_raycast

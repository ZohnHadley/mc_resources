tp @s ~ ~ ~ facing entity @n[tag=svm_ep.domain_expansion]
execute at @n[tag=svm_ep.domain_expansion] run tp @s ~ ~ ~
execute at @s run tp @s ^ ^ ^-23
execute at @s if entity @e[tag=svm_ep.domain_expansion_barrier,distance=..2.5] run return run kill @s


tag @s add svm_ep.domain_expansion_barrier
tag @s add svm_ep.no_gravity
tag @s add svm_ep.domain_expansion_barrier_not_displayed
tag @s add svm_ep.domain_expansion_part
data merge entity @s {CustomName:"domain expansion barrier",teleport_duration:1,transformation:{scale:[0f,0f,0f]},brightness:{block:0,sky:0}}

scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players set @s svm_ep.kill_after_function 1
scoreboard players set @s svm_ep.kill_after_function 2
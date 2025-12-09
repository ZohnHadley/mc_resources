scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.harpie_grabbed 1

scoreboard players set @s svm_ep.using_move 31514360

tag @s add executor
execute at @s on attacker as @n[scores={svm_ep.e.harpie_grabbed=1..}] as @s[nbt={HurtTime:10s}] run scoreboard players remove @s svm_ep.e.harpie_grabbed 15


scoreboard players remove @s[scores={svm_ep.e.harpie_grabbed=..0}] svm_ep.effect 1


execute at @s as @e[tag=svm_ep.harpie_user,distance=..20] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.p.harpie_grabbed_by_id run tag @s add same_id

effect give @s slowness 1 3 true
effect give @s weakness 1 3 true
execute as @n[tag=same_id] at @s anchored eyes positioned ^ ^-1.765 ^0.85 run tp @n[tag=executor] ~ ~ ~
tag @s remove executor
tag @e remove same_id
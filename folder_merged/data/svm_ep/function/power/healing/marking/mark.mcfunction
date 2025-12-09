execute at @s anchored eyes run particle minecraft:flash{color:0xffffffff} ^ ^ ^-0.01
execute at @s run playsound minecraft:block.amethyst_block.place master @a[distance=..10] ~ ~ ~ 2 2
execute as @s[scores={svm_ep.p.healing_marked_by=1..}] run return run scoreboard players reset @s svm_ep.p.healing_marked_by

scoreboard players operation @s svm_ep.p.healing_marked_by = @n[tag=executor] svm_ep.entity_id
execute as @s[predicate=!svm_ep:has_entity_id_slow] run function svm_ep:system/id/give_id_slow

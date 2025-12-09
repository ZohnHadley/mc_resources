scoreboard players add @s svm_ep.lifetime 1

execute as @s[scores={svm_ep.lifetime=3}] on passengers run data merge entity @s {brightness:{sky:15,block:15},teleport_duration:4,transformation:{scale:[0.2f,0.2f,0.2f]},interpolation_duration:11,start_interpolation:-1}
execute on passengers at @s run rotate @s ~27.332157745643325 ~
execute as @s[scores={svm_ep.p.gravity_field_strength=5..}] on passengers at @s run rotate @s ~5.332157745643325 ~
execute as @s[scores={svm_ep.p.gravity_field_strength=10..}] on passengers at @s run rotate @s ~5.332157745643325 ~
execute as @s[scores={svm_ep.p.gravity_field_strength=15..}] on passengers at @s run rotate @s ~5.332157745643325 ~
execute as @s[scores={svm_ep.p.gravity_field_strength=20..}] on passengers at @s run rotate @s ~5.332157745643325 ~




execute unless entity @s[scores={svm_ep.p.gravity_field_color=1..}] run function svm_ep:power/gravity/field/blast/color/green
execute as @s[scores={svm_ep.p.gravity_field_color=1}] run function svm_ep:power/gravity/field/blast/color/red
execute as @s[scores={svm_ep.p.gravity_field_color=2}] run function svm_ep:power/gravity/field/blast/color/blue
execute as @s[scores={svm_ep.p.gravity_field_color=3}] run function svm_ep:power/gravity/field/blast/color/reverted/green
execute as @s[scores={svm_ep.p.gravity_field_color=4}] run function svm_ep:power/gravity/field/blast/color/reverted/red
execute as @s[scores={svm_ep.p.gravity_field_color=5}] run function svm_ep:power/gravity/field/blast/color/reverted/blue
execute as @s[scores={svm_ep.p.gravity_field_color=6}] run function svm_ep:power/gravity/field/blast/color/custom/6
execute as @s[scores={svm_ep.p.gravity_field_color=7}] run function svm_ep:power/gravity/field/blast/color/custom/7
execute as @s[scores={svm_ep.p.gravity_field_color=8}] run function svm_ep:power/gravity/field/blast/color/custom/8











execute as @s[scores={svm_ep.lifetime=..11}] run return 0
tag @s add svm_ep.active


tag @s add executor
execute as @e[tag=svm_ep.gravity_user,distance=..50] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add immune




execute at @s run tp @s ^ ^ ^0.3
execute at @s run function svm_ep:power/gravity/field/blast/move
execute at @s[scores={svm_ep.p.gravity_field_strength=5..}] run function svm_ep:power/gravity/field/blast/move
execute at @s[scores={svm_ep.p.gravity_field_strength=10..}] run function svm_ep:power/gravity/field/blast/move
execute at @s[scores={svm_ep.p.gravity_field_strength=15..}] run function svm_ep:power/gravity/field/blast/move
execute at @s[scores={svm_ep.p.gravity_field_strength=20..}] run function svm_ep:power/gravity/field/blast/move
execute at @s run summon marker ~ ~ ~ {Tags:["kill"]}
tp @s ~ ~ ~
execute at @s unless entity @s[scores={svm_ep.p.gravity_field_reverted=1}] as @e[tag=hitby] run tp @s ~ ~-0.3 ~
execute as @s[scores={svm_ep.p.gravity_field_reverted=1}] as @e[tag=hitby] run function svm_ep:power/gravity/repel_blast/hitby

execute at @n[tag=kill] run tp @s ~ ~ ~
kill @n[tag=kill]
tag @e remove hitby
tag @e remove immune
tag @s remove executor
kill @s[scores={svm_ep.lifetime=30..}]
execute as @s[scores={svm_ep.e.freezed_display_order=0..}] run return run execute unless entity @e[scores={svm_ep.e.freezed=1..},distance=..10] run function svm_ep:entity/effect/freezed/clear_model
execute as @s[scores={svm_ep.e.cobwebed_display_order=0..}] run return run execute unless entity @e[scores={svm_ep.e.cobwebed=1..},distance=..10] run function svm_ep:entity/effect/cobwebed/clear_model
execute as @s[tag=svm_ep.gravity_field_display] run return run function svm_ep:power/gravity/field/display/check_to_recall


execute on passengers run return 0
execute on vehicle run return 0
execute as @s[tag=svm_ep.npc_adapter_wheel] at @s if entity @e[tag=svm_ep.npc_adapter,distance=..50] run return run ride @s mount @n[tag=svm_ep.npc_adapter]

kill @s

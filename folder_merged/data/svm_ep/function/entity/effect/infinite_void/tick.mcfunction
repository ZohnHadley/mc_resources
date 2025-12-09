scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.infinite_void 1

scoreboard players set @s svm_ep.using_move 31514360
execute as @s[tag=!svm_ep.infinite_void_struct_by] run function svm_ep:entity/effect/infinite_void/setup
execute as @s[scores={svm_ep.e.infinite_void=..0}] run function svm_ep:entity/effect/infinite_void/end
execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:enchant ~ ~0.5 ~ 0.3 0.3 0.3 0.7 2
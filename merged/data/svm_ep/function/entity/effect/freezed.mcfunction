execute at @s as @n[scores={svm_ep.e.freezed_display_order=1}] run tp @s ~ ~-0.49 ~
execute at @s anchored eyes positioned ^ ^ ^ as @n[scores={svm_ep.e.freezed_display_order=1}] run function svm_ep:entity/effect/freezed/display_tick


scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.freezed 1
execute at @s on attacker as @n[scores={svm_ep.e.freezed=1..}] as @s[nbt={HurtTime:10s}] run function svm_ep:entity/effect/freezed/punched_effect
scoreboard players set @s[scores={svm_ep.e.freezed=240..}] svm_ep.e.freezed 240

effect give @s minecraft:weakness 15 3 true
effect give @s minecraft:slowness 5 2 true
effect give @s minecraft:slowness 10 0 true

execute at @s run particle minecraft:item{item:ice} ~ ~ ~ 1 1 1 0.05 1
#execute at @s[scores={svm_ep.e.freezed=70..}] run particle minecraft:block_marker{block_state:ice} ~ ~1 ~ 0.25 0.45 0.25 0 3
scoreboard players set @s svm_ep.using_move 31514360
tag @s add executor

tag @s remove executor

#execute at @s anchored eyes unless block ~ ~ ~ #minecraft:ice run scoreboard players set @s svm_ep.e.freezed 0
execute as @s[scores={svm_ep.e.freezed=..0}] at @s run function svm_ep:entity/effect/freezed_end
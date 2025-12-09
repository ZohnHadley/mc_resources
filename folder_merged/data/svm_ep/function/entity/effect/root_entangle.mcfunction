scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.root_entangle 1
scoreboard players set @s[scores={svm_ep.e.root_entangle=240..}] svm_ep.e.root_entangle 240

effect give @s minecraft:slowness 1 3 true
effect give @s minecraft:weakness 1 3 true

execute at @s if predicate svm_ep:chance/25_percent run particle minecraft:block_marker{block_state:hanging_roots} ~ ~0.25 ~ 0.3 0.6 0.3 0 1
execute at @s run particle minecraft:dust{color:[0.61f,0.4f,0.25f],scale:1f} ~ ~0.3 ~ 0.4 0.5 0.4 0 2
execute at @s run particle minecraft:item{item:rooted_dirt} ~ ~ ~ 0 0 0 0.05 1
execute at @s run playsound minecraft:block.rooted_dirt.place master @a[distance=..25] ~ ~ ~ 0.3 1.2

execute at @s run function svm_ep:system/go_downward



execute as @s[scores={svm_ep.e.root_entangle=0}] run function svm_ep:entity/effect/root_entangle_end
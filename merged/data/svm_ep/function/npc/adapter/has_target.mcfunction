

execute at @s[scores={svm_ep.using_move=1..}] run tp @s ~ ~ ~ facing entity @n[tag=target]

execute if entity @n[tag=target,distance=2..] run scoreboard players add @s svm_ep.npc.adapter.attacked_by_distance 1
execute if entity @n[tag=target,distance=20..] run scoreboard players add @s svm_ep.npc.adapter.attacked_by_distance 3
execute if entity @n[tag=target,distance=30..] run scoreboard players add @s svm_ep.npc.adapter.attacked_by_distance 6

execute anchored eyes positioned ^ ^ ^1 unless block ~ ~ ~ #svm_ep:no_physical_hitbox run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}
execute anchored eyes positioned ^ ^-1 ^1 unless block ~ ~ ~ #svm_ep:no_physical_hitbox run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}
execute anchored eyes positioned ^ ^ ^2 unless block ~ ~ ~ #svm_ep:no_physical_hitbox run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}
execute anchored eyes positioned ^ ^-1 ^2 unless block ~ ~ ~ #svm_ep:no_physical_hitbox run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}


execute at @s if entity @n[tag=target,distance=..30] as @s[scores={svm_ep.npc.adapter.adaptation.distance.lvl=10..}] unless entity @s[scores={svm_ep.using_move=1..}] if predicate svm_ep:chance/50_percent run function svm_ep:npc/adapter/slash

execute as @s[scores={svm_ep.npc.adapter.adaptation.distance.lvl=1..}] run function svm_ep:npc/adapter/dash
execute if score @s svm_ep.npc.adapter.adaptation.strength.progress >= @s svm_ep.npc.adapter.adaptation.strength.progress_to_make run function svm_ep:npc/adapter/adapt/strength/setup



execute on passengers at @s run rotate @s ~ 0



tag @e remove target
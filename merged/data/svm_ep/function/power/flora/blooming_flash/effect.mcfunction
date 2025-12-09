scoreboard players remove @s svm_ep.p.flora_blooming_effect 1


execute if predicate svm_ep:chance/25_percent as @s[scores={svm_ep.p.flora_blooming_effect=..60}] run damage @s 0.75 svm_ep:bypass_cooldown
execute if predicate svm_ep:chance/40_percent as @s[scores={svm_ep.p.flora_blooming_effect=..45}] run damage @s 0.75 svm_ep:bypass_cooldown
execute if predicate svm_ep:chance/50_percent as @s[scores={svm_ep.p.flora_blooming_effect=..30}] run damage @s 0.75 svm_ep:bypass_cooldown
effect give @s minecraft:slowness 5 5 true
effect give @s minecraft:weakness 5 4 true
effect give @s[scores={svm_ep.p.flora_blooming_effect=..80}] minecraft:blindness 5 0 true
execute at @s[scores={svm_ep.p.flora_blooming_effect=80}] run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 2 0.6
execute at @s[scores={svm_ep.p.flora_blooming_effect=..90}] run particle minecraft:soul ~ ~0.7 ~ 0 0 0 0.4 3
execute at @s[scores={svm_ep.p.flora_blooming_effect=..70}] run playsound minecraft:block.rooted_dirt.break master @a[distance=..15] ~ ~ ~ 1 0.8
execute at @s[scores={svm_ep.p.flora_blooming_effect=..56}] anchored eyes positioned ^ ^-0.1 ^0.4 run particle minecraft:item{item:cherry_leaves} ~ ~ ~ 0.03 0.03 0.03 0.1 3
execute at @s run tp @s[scores={svm_ep.p.flora_blooming_effect=..70}] ~ ~ ~ ~ ~4

execute at @s[scores={svm_ep.p.flora_blooming_effect=110}] run playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 3 0
execute if predicate svm_ep:chance/10_percent at @s[scores={svm_ep.p.flora_blooming_effect=..60}] run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 0.8 0.4
execute if predicate svm_ep:chance/10_percent at @s[scores={svm_ep.p.flora_blooming_effect=..60}] run playsound minecraft:entity.ghast.warn master @s ~ ~ ~ 0.8 0.7
playsound minecraft:entity.wither.spawn master @s[scores={svm_ep.p.flora_blooming_effect=80}] ~ ~ ~ 1 1.3


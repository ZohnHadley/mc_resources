scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.petals_of_peace 1
scoreboard players set @s[scores={svm_ep.e.petals_of_peace=800..}] svm_ep.e.petals_of_peace 800
execute at @s[scores={svm_ep.e.petals_of_peace=20..}] anchored eyes positioned ^ ^ ^ run particle minecraft:cherry_leaves ~ ~1 ~ 1 0.1 1 0.5 2
execute at @s[scores={svm_ep.e.petals_of_peace=..20}] run particle minecraft:dust{color:[18000000f,0.75f,1f],scale:1.5f} ~ ~1 ~ 1 1 1 0 5

scoreboard players set @s svm_ep.using_move 31514360

effect give @s minecraft:slowness 1 5 true
effect give @s minecraft:weakness 1 15 true

execute at @s on attacker if entity @s as @n[scores={svm_ep.e.petals_of_peace=1..}] run scoreboard players set @s svm_ep.e.petals_of_peace 0

execute as @s[scores={svm_ep.e.petals_of_peace=0}] run function svm_ep:entity/effect/petals_of_peace_end
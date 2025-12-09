effect give @s slowness 1 5 true
effect give @a[distance=..30] minecraft:nausea 8 3 true

execute at @s run particle minecraft:dust{color:[18000000f,0.75f,18000000f],scale:3.0f} ~ ~1 ~ 1 1 1 0 1
execute at @s[scores={svm_ep.using_move=380}] run playsound minecraft:block.ender_chest.open master @a[distance=..40] ~ ~ ~ 1.0 0.0
execute at @s[scores={svm_ep.using_move=380}] run playsound minecraft:entity.elder_guardian.curse master @a[distance=..40] ~ ~ ~ 1.0 0.0
execute at @s[scores={svm_ep.using_move=..350}] if predicate svm_ep:chance/33_percent run playsound minecraft:item.trident.thunder master @a[distance=..40] ~ ~ ~ 2.0 0.0
execute at @s[scores={svm_ep.using_move=..360}] if predicate svm_ep:chance/33_percent run playsound minecraft:particle.soul_escape master @a[distance=..40] ~ ~ ~ 1.0 0.0

execute at @s[scores={svm_ep.using_move=300..380}] run particle minecraft:dust{color:[18000000f,0.75f,18000000f],scale:2.0f} ~ ~1 ~ 1 1 1 0 1
execute at @s[scores={svm_ep.using_move=380}] run particle minecraft:dust{color:[18000000f,0.75f,18000000f],scale:3.0f} ~ ~1 ~ 2 2 2 0 25
execute at @s[scores={svm_ep.using_move=380}] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 250
execute at @s[scores={svm_ep.using_move=380}] run particle minecraft:flash{color:0xffffffff} ~ ~1 ~
execute at @s[scores={svm_ep.using_move=380}] run playsound minecraft:entity.wither.shoot master @a[distance=..50] ~ ~ ~ 0.7 0.0

execute at @s[scores={svm_ep.using_move=..360}] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 25
execute at @s[scores={svm_ep.using_move=..360}] run playsound minecraft:entity.wither.shoot master @a[distance=..50] ~ ~ ~ 0.7 1.2
execute at @s[scores={svm_ep.using_move=..360}] run particle minecraft:dust{color:[18000000f,1.0f,18000000f],scale:2.5f} ~ ~1 ~ 1 1 1 0 4
execute at @s[scores={svm_ep.using_move=..360}] run particle minecraft:dust{color:[1.0f,0.0f,1.0f],scale:2.5f} ~ ~1 ~ 2 2 2 0 4
execute at @s[scores={svm_ep.using_move=..360}] run particle minecraft:dust{color:[0.7f,0.2f,0.7f],scale:2.5f} ~ ~1 ~ 3 3 3 0 4

execute at @s[scores={svm_ep.using_move=..350}] run playsound minecraft:entity.wither.shoot master @a[distance=..50] ~ ~ ~ 0.7 1.76
execute at @s[scores={svm_ep.using_move=..350}] run particle minecraft:dust{color:[18000000f,1.0f,18000000f],scale:2.5f} ~ ~ ~ 1 0 1 0 3
execute at @s[scores={svm_ep.using_move=..350}] run particle minecraft:dust{color:[18000000f,0.6f,18000000f],scale:2.5f} ~ ~ ~ 2 0 2 0 3
execute at @s[scores={svm_ep.using_move=..350}] run particle minecraft:dust{color:[18000000f,0.25f,18000000f],scale:2.5f} ~ ~ ~ 3 0 3 0 3
execute at @s[scores={svm_ep.using_move=..350}] run particle minecraft:dust{color:[1.0f,0.7f,1.0f],scale:2.5f} ~ ~ ~ 3.5 0 3.5 0 3
execute at @s[scores={svm_ep.using_move=..350}] run particle minecraft:dust{color:[1.0f,0.4f,1.0f],scale:2.5f} ~ ~ ~ 4 0 4 0 3
execute at @s[scores={svm_ep.using_move=..350}] run particle minecraft:dust{color:[0.7f,0.2f,0.7f],scale:2.5f} ~ ~ ~ 4.5 0 4.5 0 3
execute at @s[scores={svm_ep.using_move=..350}] run particle minecraft:dust{color:[0.5f,0.0f,0.5f],scale:2.5f} ~ ~ ~ 5 0 5 0 3

execute at @s run particle minecraft:dust{color:[0.5f,0.0f,0.5f],scale:1.5f} ~ ~0.2 ~ 5 0 5 0 40
execute at @s run particle minecraft:dust{color:[0.85f,0.2f,0.85f],scale:2f} ~ ~0.2 ~ 6 0 6 0 40

execute at @s[scores={svm_ep.using_move=..380}] as @e[distance=..8,type=#svm_ep:creatures] at @s run particle minecraft:dust{color:[0.5f,0.0f,0.5f],scale:2.5f} ~ ~ ~ 5 0 5 0 1
execute at @s[scores={svm_ep.using_move=..360}] as @e[distance=..8,type=#svm_ep:creatures] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 2 10
execute at @s[scores={svm_ep.using_move=350}] as @e[distance=..8,type=#svm_ep:creatures] run function svm_ep:power/dimension_traveler/hop/tp
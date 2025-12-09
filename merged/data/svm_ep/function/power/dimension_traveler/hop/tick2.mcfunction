effect give @s slowness 1 5 true
effect give @a[distance=..30] minecraft:nausea 5 3 true

execute at @s[scores={svm_ep.using_move=..480}] run particle minecraft:dust{color:[18000000f,0.75f,18000000f],scale:3f} ~ ~1 ~ 2 2 2 0 5
execute at @s[scores={svm_ep.using_move=..480}] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 20
execute at @s[scores={svm_ep.using_move=..480}] run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..40] ~ ~ ~ 0.7 2
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~1 ~
execute at @s[scores={svm_ep.using_move=480}] run playsound minecraft:entity.elder_guardian.curse master @a[distance=..40] ~ ~ ~ 2 2
execute at @s[scores={svm_ep.using_move=..480}] if predicate svm_ep:chance/33_percent run playsound minecraft:item.trident.thunder master @a[distance=..40] ~ ~ ~ 1 2
execute at @s[scores={svm_ep.using_move=..480}] if predicate svm_ep:chance/33_percent run playsound minecraft:particle.soul_escape master @a[distance=..40] ~ ~ ~ 1 2
execute at @s[scores={svm_ep.using_move=..480}] if predicate svm_ep:chance/33_percent run playsound minecraft:particle.soul_escape master @a[distance=..40] ~ ~ ~ 1 2

execute at @s[scores={svm_ep.using_move=..440}] run particle minecraft:dust{color:[0.5f,0.0f,0.5f],scale:2.5f} ~ ~ ~ 5 0 5 0 1
execute at @s[scores={svm_ep.using_move=..470}] as @e[distance=..8,type=#svm_ep:creatures] at @s run particle minecraft:dust{color:[0.5f,0.0f,0.5f],scale:2.5f} ~ ~ ~ 5 0 5 0 1
execute at @s[scores={svm_ep.using_move=..470}] as @e[distance=..8,type=#svm_ep:creatures] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 2 10
execute at @s[scores={svm_ep.using_move=460}] as @e[distance=..8,type=#svm_ep:creatures] run function svm_ep:power/dimension_traveler/hop/tp2

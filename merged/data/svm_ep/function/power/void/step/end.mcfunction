gamemode survival @s
function svm_ep:system/gamemode/set_to_previous

#execute at @s run playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 3 0.7
#execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 3.7 0
#execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.35 120
scoreboard players add @s svm_ep.p.void_ability_04_delay 5

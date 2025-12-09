execute unless entity @s[scores={svm_ep.mana=1..}] run return 0
scoreboard players remove @s svm_ep.mana 1
scoreboard players remove @s svm_ep.p.healing_immortality 99


effect give @s minecraft:instant_health 1 0 false


particle minecraft:dust{color:[1f,0.0f,0.2f],scale:1.8f} ~ ~1 ~ 0.6 1.4 0.6 0 15
particle minecraft:dust{color:[18000000f,0.0f,0.5f],scale:1.8f} ~ ~1 ~ 0.3 0.7 0.3 0 10

execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.7 0.5 0.15 5
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 0.3 1.8
execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 23
execute at @s run playsound minecraft:block.netherrack.hit master @a[distance=..25] ~ ~1 ~ 1 0

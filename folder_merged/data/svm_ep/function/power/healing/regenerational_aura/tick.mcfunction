scoreboard players add @s svm_ep.p.healing_ability_02_delay 1
scoreboard players remove @s svm_ep.p.healing_aura 1
effect give @s minecraft:slowness 1 0 true

function svm_ep:power/healing/regenerational_aura/ring
particle minecraft:dust{color:[18000000f,0.5f,0.75f],scale:1f} ~ ~ ~ 2.75 2.75 2.75 0 5
particle minecraft:dust{color:[18000000f,0.5f,0.75f],scale:1f} ~ ~0.2 ~ 2.75 0.1 2.75 0 10


scoreboard players operation LENGTH svm_ep.numbers = @s svm_ep.p.healing_aura
scoreboard players operation LENGTH svm_ep.numbers %= %regenerational_aura_healing_frequency svm_ep.world_settings

execute if score LENGTH svm_ep.numbers matches 0 as @e[type=!#svm_ep:technical,distance=..5.5] at @s run function svm_ep:power/healing/regenerational_aura/give_effect
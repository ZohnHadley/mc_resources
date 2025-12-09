scoreboard players remove @s svm_ep.p.healing_immortality 1
effect give @s minecraft:regeneration 1 3 true
function svm_ep:system/get_hp
execute if score @s health < @s health_max run function svm_ep:power/healing/immortality/heal
particle minecraft:dust{color:[1f,0.0f,0.2f],scale:0.8f} ~ ~1 ~ 0.6 1.4 0.6 0 2
particle minecraft:dust{color:[18000000f,0.0f,0.5f],scale:0.8f} ~ ~1 ~ 0.3 0.7 0.3 0 1
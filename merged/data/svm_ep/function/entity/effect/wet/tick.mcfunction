scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.wet_splashed 1
scoreboard players remove @s[scores={svm_ep.e.wet_splashed=..1}] svm_ep.e.wet 1

scoreboard players set @s[scores={svm_ep.e.wet=120..}] svm_ep.e.wet 120

execute as @s[scores={svm_ep.e.wet=..0}] run function svm_ep:entity/effect/wet/end
effect give @s[scores={svm_ep.e.wet=1..}] slowness 1 0 true
effect give @s[scores={svm_ep.e.wet=21..}] slowness 1 1 true
effect give @s[scores={svm_ep.e.wet=41..}] slowness 1 2 true
effect give @s[scores={svm_ep.e.wet=61..}] slowness 1 3 true
effect give @s[scores={svm_ep.e.wet=81..}] slowness 1 4 true
execute at @s run particle minecraft:falling_water ~ ~0.5 ~ 0.4 0.7 0.4 0.1 1
execute at @s[scores={svm_ep.e.wet=1..}] run particle minecraft:falling_water ~ ~0.5 ~ 0.4 0.7 0.4 0.1 1
execute at @s[scores={svm_ep.e.wet=21..}] run particle minecraft:falling_water ~ ~0.5 ~ 0.4 0.7 0.4 0.1 1
execute at @s[scores={svm_ep.e.wet=41..}] run particle minecraft:falling_water ~ ~0.5 ~ 0.4 0.7 0.4 0.1 1
execute at @s[scores={svm_ep.e.wet=61..}] run particle minecraft:falling_water ~ ~0.5 ~ 0.4 0.7 0.4 0.1 1
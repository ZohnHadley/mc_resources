scoreboard players remove @s svm_ep.p.lightning_charge 1
scoreboard players reset @s[scores={svm_ep.p.lightning_charge=0}] svm_ep.p.lightning_charge_level

effect give @s[scores={svm_ep.p.lightning_charge=20..}] minecraft:speed 1 3 true
effect give @s[scores={svm_ep.p.lightning_charge=20..}] minecraft:haste 1 0 true

effect give @s[scores={svm_ep.p.lightning_charge=20..,svm_ep.p.lightning_charge_level=60..}] minecraft:speed 1 5 true
effect give @s[scores={svm_ep.p.lightning_charge=20..,svm_ep.p.lightning_charge_level=60..}] minecraft:haste 1 1 true
effect give @s[scores={svm_ep.p.lightning_charge=20..,svm_ep.p.lightning_charge_level=60..}] minecraft:night_vision 1 0 true


effect give @s[scores={svm_ep.p.lightning_charge=20..,svm_ep.p.lightning_charge_level=70..}] minecraft:speed 1 6 true
effect give @s[scores={svm_ep.p.lightning_charge=20..,svm_ep.p.lightning_charge_level=70..}] minecraft:jump_boost 1 3 true
effect give @s[scores={svm_ep.p.lightning_charge=20..,svm_ep.p.lightning_charge_level=70..}] minecraft:haste 1 2 true

effect give @s[scores={svm_ep.p.lightning_charge=20..,svm_ep.p.lightning_charge_level=80..}] minecraft:speed 1 7 true
effect give @s[scores={svm_ep.p.lightning_charge=20..,svm_ep.p.lightning_charge_level=80..}] minecraft:haste 1 2 true

execute at @s run function svm_ep:power/lightning/charge/particles
execute at @s[scores={svm_ep.p.lightning_charge_level=60..}] run function svm_ep:power/lightning/charge/particles
execute at @s[scores={svm_ep.p.lightning_charge_level=70..}] run function svm_ep:power/lightning/charge/particles
execute at @s[scores={svm_ep.p.lightning_charge_level=80..}] run function svm_ep:power/lightning/charge/particles


execute if predicate svm_ep:chance/25_percent run playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 1 1
execute as @s[scores={svm_ep.p.lightning_charge_level=60..}] if predicate svm_ep:chance/50_percent run playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 1.33 1.33
execute as @s[scores={svm_ep.p.lightning_charge_level=70..}] if predicate svm_ep:chance/75_percent run playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 1.67 1.67
execute as @s[scores={svm_ep.p.lightning_charge_level=80..}] run playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 2 2

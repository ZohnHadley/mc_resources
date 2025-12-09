#AS CHARGE
scoreboard players add @s svm_ep.lifetime 1
execute as @s[scores={svm_ep.lifetime=101..}] at @s unless entity @e[tag=svm_ep.explosion_ray,distance=..50] run scoreboard players add @s svm_ep.lifetime 9

execute at @s[scores={svm_ep.lifetime=20}] positioned ~ ~4 ~ summon minecraft:item_display run function svm_ep:power/explosion/destroyer/summon_ring/1
execute at @s[scores={svm_ep.lifetime=30}] positioned ~ ~9 ~ summon minecraft:item_display run function svm_ep:power/explosion/destroyer/summon_ring/2
execute at @s[scores={svm_ep.lifetime=40}] positioned ~ ~20 ~ summon minecraft:item_display run function svm_ep:power/explosion/destroyer/summon_ring/3
execute at @s[scores={svm_ep.lifetime=50}] positioned ~ ~32 ~ summon minecraft:item_display run function svm_ep:power/explosion/destroyer/summon_ring/4
execute at @s[scores={svm_ep.lifetime=60}] positioned ~ ~50 ~ summon minecraft:item_display run function svm_ep:power/explosion/destroyer/summon_ring/5

execute at @s[scores={svm_ep.lifetime=95..420}] as @a[distance=..150] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 2 0.3
execute at @s[scores={svm_ep.lifetime=200..420}] as @a[distance=..150] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 2 1
execute at @s[scores={svm_ep.lifetime=300..420}] as @a[distance=..150] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 2 2
execute at @s[scores={svm_ep.lifetime=95..440}] as @a[distance=..150] at @s if predicate svm_ep:chance/33_percent run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 1 0.3

execute at @s[scores={svm_ep.lifetime=..100}] as @a[distance=..150] at @s run playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 1 0.3

execute at @s[scores={svm_ep.lifetime=..120}] run particle minecraft:campfire_signal_smoke ~ ~10 ~ 1 7 1 0.1 1200 force @a
execute at @s[scores={svm_ep.lifetime=..120}] run particle minecraft:smoke ~ ~10 ~ 4 16 4 0.1 100 force @a
#execute at @s[scores={svm_ep.lifetime=430..}] run summon minecraft:item_display ~ ~ ~ {Tags:["svm_ep.explosion_particle"]}

execute at @s[scores={svm_ep.lifetime=100}] run function svm_ep:power/explosion/destroyer/explode
execute at @s run particle minecraft:explosion_emitter
execute at @s[scores={svm_ep.lifetime=100..400}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 1.3 1600 force @a
execute at @s[scores={svm_ep.lifetime=100..400}] run particle minecraft:flame ~ ~ ~ 0 0 0 1.78 1200 force @a
execute at @s[scores={svm_ep.lifetime=100..400}] run particle minecraft:cloud ~ ~ ~ 0 0 0 3 1200 force @a
kill @s[scores={svm_ep.lifetime=450..}]
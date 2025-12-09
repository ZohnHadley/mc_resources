scoreboard players add @s svm_ep.lifetime 1
scoreboard players add @s[tag=svm_ep.portal_from_travel] svm_ep.lifetime 1

tp @s ~ ~ ~ ~6 90
execute at @s run tp @s[scores={svm_ep.lifetime=30..}] ~ ~ ~ ~2 90
execute at @s run tp @s[scores={svm_ep.lifetime=40..}] ~ ~ ~ ~2 90
execute at @s run tp @s[scores={svm_ep.lifetime=50..}] ~ ~ ~ ~2 90
execute at @s run tp @s[scores={svm_ep.lifetime=60..}] ~ ~ ~ ~3 90
execute at @s run tp @s[scores={svm_ep.lifetime=70..}] ~ ~ ~ ~3 90
execute at @s run tp @s[scores={svm_ep.lifetime=80..}] ~ ~ ~ ~4 90
execute at @s run tp @s[scores={svm_ep.lifetime=90..}] ~ ~ ~ ~4 90

execute at @s positioned ^1.25 ^ ^ run particle minecraft:dust{color:[0.42f,0.0f,0.75f],scale:1f} ~ ~ ~ 0.1 0.1 0.1 0 3
execute at @s positioned ^-1.25 ^ ^ run particle minecraft:dust{color:[0.42f,0.0f,0.75f],scale:1f} ~ ~ ~ 0.1 0.1 0.1 0 3


execute at @s[scores={svm_ep.lifetime=..94}] anchored eyes run function svm_ep:items/portal/particles

execute at @s[scores={svm_ep.lifetime=..36}] run playsound minecraft:entity.elder_guardian.ambient master @a[distance=..10] ~ ~ ~ 0.5 0

execute at @s as @e[type=!#svm_ep:technical,distance=..2] unless entity @s[scores={svm_ep.portal_delay=1..}] run function svm_ep:items/portal/teleport_entity
execute at @s run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 1 4



execute at @s[scores={svm_ep.lifetime=100..}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 100
execute at @s[scores={svm_ep.lifetime=100..}] run particle minecraft:explosion ~ ~0.1 ~
execute at @s[scores={svm_ep.lifetime=100..}] run playsound minecraft:entity.elder_guardian.death master @a[distance=..10] ~ ~ ~ 2 2
execute at @s[scores={svm_ep.lifetime=100..}] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..15] ~ ~ ~ 1 1.3
kill @s[scores={svm_ep.lifetime=100..}]
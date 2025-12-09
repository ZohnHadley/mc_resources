scoreboard players remove @s svm_ep.lifetime 1
execute at @s[scores={svm_ep.lifetime=1..}] run setblock ~ ~ ~ reinforced_deepslate
execute at @s run playsound minecraft:block.crafter.craft master @a[distance=..20] ~ ~ ~ 1.5 0.15
execute at @s[scores={svm_ep.lifetime=1..}] run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..20] ~ ~ ~ 1.5 2
execute at @s[scores={svm_ep.lifetime=..0}] run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..20] ~ ~ ~ 1.5 0
execute at @s[scores={svm_ep.lifetime=..0}] run particle portal ~ ~ ~ 0 0 0 2 100
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~ ~ 0 0 0 0 1
kill @s[scores={svm_ep.lifetime=..0}]
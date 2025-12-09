
execute at @s as @e[distance=..4.5,type=!#svm_ep:technical] unless entity @s[scores={svm_ep.p.phase_used_smash=1..}] run damage @s 6 svm_ep:bypass_cooldown by @e[scores={svm_ep.p.phase_used_smash=1..},limit=1,sort=nearest,distance=..12]
execute at @s as @e[distance=..4.5,type=!#svm_ep:technical] unless entity @s[scores={svm_ep.p.phase_used_smash=1..}] run effect give @s slowness 3 2 true
execute at @s as @e[distance=..4,type=!#svm_ep:technical] unless entity @s[scores={svm_ep.p.phase_used_smash=1..}] run damage @s 3 svm_ep:bypass_cooldown by @e[scores={svm_ep.p.phase_used_smash=1..,svm_ep.p.phase_awakening=1..},limit=1,sort=nearest,distance=..12]
execute at @s as @e[distance=..6,type=!#svm_ep:technical] at @s run tp @s ~ ~0.075 ~
execute at @s as @e[distance=..4,type=!#svm_ep:technical] at @s run tp @s ~ ~0.025 ~
execute at @s as @e[distance=..2,type=!#svm_ep:technical] at @s run tp @s ~ ~0.025 ~

execute at @s run playsound minecraft:entity.generic.explode ambient @a ~ ~1 ~ 2.5 1.6
execute at @s run playsound minecraft:entity.player.attack.knockback ambient @a ~ ~1 ~ 4.5 0
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.45 150

kill @s[type=!player]
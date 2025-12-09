#execute at @s on attacker run tag @s add attacker
item replace entity @s weapon with air
#execute at @s if entity @e[tag=attacker,distance=..3] unless entity @s[scores={svm_ep.using_move=1..}] unless entity @s[scores={svm_ep.p.phase_delay_02=1..}] run function svm_ep:power/phase/ability/use/2
#execute at @s on attacker run tag @s remove attacker
#effect give @s minecraft:invisibility infinite 0 true

return 0
say 111
function svm_ep:system/get_motion
execute unless entity @s[scores={motion.x=0,motion.z=0}] run scoreboard players add @s svm_ep.walking_frame 1
execute if entity @s[scores={motion.x=0,motion.z=0}] run scoreboard players set @s svm_ep.walking_frame 0



scoreboard players set @s[scores={svm_ep.walking_frame=10..}] svm_ep.walking_frame 0

execute at @s on passengers run data modify entity @s Rotation[0] set from entity @n[type=!#svm_ep:technical] Rotation[0]
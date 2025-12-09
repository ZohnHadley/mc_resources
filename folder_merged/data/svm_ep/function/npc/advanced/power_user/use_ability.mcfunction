execute unless entity @s[scores={svm_ep.p.npc_use_delay1=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:npc/advanced/power_user/use_ability1
execute as @s[scores={svm_ep.npc_strength=2..}] unless entity @s[scores={svm_ep.p.npc_use_delay2=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:npc/advanced/power_user/use_ability2
execute as @s[scores={svm_ep.npc_strength=3..}] unless entity @s[scores={svm_ep.p.npc_use_delay3=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:npc/advanced/power_user/use_ability3

scoreboard players set @s svm_ep.p.npc_use_delay 15
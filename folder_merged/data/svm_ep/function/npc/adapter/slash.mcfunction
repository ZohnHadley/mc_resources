scoreboard players remove @s svm_ep.npc.adapter.slash_cooldown 1

execute as @s[scores={svm_ep.npc.adapter.slash_cooldown=1..}] run return 0

scoreboard players set @s svm_ep.raycast_length 30
scoreboard players set @s svm_ep.npc.adapter.slash_cooldown 40

execute at @s anchored eyes positioned ^ ^ ^ run function svm_ep:fighting_style/slash/movement/slash/shoot
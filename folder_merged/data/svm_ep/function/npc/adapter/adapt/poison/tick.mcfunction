execute as @s[scores={svm_ep.npc.adapter.adaptation.poison.progress=1..}] run return run effect clear @s minecraft:poison
scoreboard players add @s svm_ep.npc.adapter.adaptation.poison.progress 1

execute if score @s svm_ep.npc.adapter.adaptation.poison.progress >= @s svm_ep.npc.adapter.adaptation.poison.progress_to_make run function svm_ep:npc/adapter/adapt/poison/setup
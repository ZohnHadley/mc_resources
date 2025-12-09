execute at @s summon marker run function svm_ep:npc/spawn/spread {"range":"22","command":"function svm_ep:npc/spawn/cherry_guardian"}
execute at @s if predicate svm_ep:chance/30_percent summon marker run function svm_ep:npc/spawn/spread {"range":"15","command":"function svm_ep:npc/spawn/cherry_guardian"}
execute at @s if predicate svm_ep:chance/30_percent summon marker run function svm_ep:npc/spawn/spread {"range":"15","command":"function svm_ep:npc/spawn/cherry_guardian"}
execute at @s run playsound minecraft:entity.player.attack.knockback master @s ~ ~ ~ 1 0
execute at @s run particle minecraft:cherry_leaves ~ ~4.7 ~ 2 0.2 2 0.3 150
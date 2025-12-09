execute as @s[type=player,advancements={svm_ep:unlocked_ability/water/3=false}] run return 0
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move




scoreboard players add @s svm_ep.p.water_flowing_movement 1
scoreboard players set @s[scores={svm_ep.p.water_flowing_movement=2..}] svm_ep.p.water_flowing_movement 0


execute at @s[scores={svm_ep.p.water_flowing_movement=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.7
execute at @s[scores={svm_ep.p.water_flowing_movement=1}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.7

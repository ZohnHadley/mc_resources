#function svm_ep:break_block
execute summon item_display run function svm_ep:power/gravity/strengthen/setup
particle minecraft:raid_omen ~ ~ ~ 0 0 0 1.5 10
particle minecraft:dust{color:[18000000f,0.4f,0.4f],scale:2f} ~ ~ ~ 0.3 0.3 0.3 0.5 10
particle minecraft:gust
playsound minecraft:block.trial_spawner.break master @a ~ ~ ~ 2 0
playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 2 2

scoreboard players add @a[distance=..5] svm_ep.shaking 3
scoreboard players reset @s svm_ep.using_move
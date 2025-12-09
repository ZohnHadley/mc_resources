execute summon marker run function svm_ep:power/flora/manipulation/type/wood/setup
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust{color:[0.75,0.5,0.3],scale:1.5} ~ ~ ~ 0.35 0.35 0.35 0 15 force @s
scoreboard players add @s svm_ep.mana_drain 60
execute at @s run playsound minecraft:block.wood.place master @s ~ ~ ~ 0.85 1.1 0.2
scoreboard players add @s svm_ep.used_move 3

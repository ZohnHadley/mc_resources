execute as @s[scores={svm_ep.mana=..3}] run return 1
effect give @s minecraft:slow_falling 1 0 true
execute as @s[scores={input.jump_time=2..}] run return 2
scoreboard players set $strength player_motion.api.launch 3200
execute rotated ~ ~-35 run function player_motion:api/launch_looking

scoreboard players add @s svm_ep.mana_drain 300
scoreboard players add @s svm_ep.used_move 10

particle minecraft:dust{color:[0.4f,0.8f,1f],scale:1.5f} ~ ~0.2 ~ 0.3 0 0.3 0 2
particle minecraft:dust{color:[0.25f,0.5f,0.95f],scale:1.25f} ~ ~0.2 ~ 0.35 0.05 0.35 0 3
particle minecraft:dust{color:[0.2f,0.4f,0.9f],scale:1f} ~ ~0.2 ~ 0.4 0.1 0.4 0 3


particle minecraft:bubble_pop ~ ~ ~ 0.35 0.05 0.35 0.05 15
particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0.35 8
playsound minecraft:item.bucket.empty master @a[distance=..25] ~ ~ ~ 0.25 1.25
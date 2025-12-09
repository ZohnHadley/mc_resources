function svm_ep:items/sword_slash

playsound minecraft:entity.wither.shoot master @a[distance=..25] ~ ~ ~ 0.3 0
playsound minecraft:entity.player.attack.sweep master @a[distance=..25] ~ ~ ~ 1.2 1.2
particle minecraft:smoke ~ ~1 ~ 1 1 1 0.2 20
execute as @s[tag=svm_ep.death_user] run return run effect give @e[distance=0.1..5] minecraft:wither 5 1 false
execute as @s[tag=svm_ep.copy_user,scores={svm_ep.p.copy_ability_35_count=1..}] run effect give @e[distance=0.1..5] minecraft:wither 5 1 false
execute as @s[tag=svm_ep.copy_user,scores={svm_ep.p.copy_ability_35_count=1..}] run return run function svm_ep:power/copy/power/death/drain


particle minecraft:damage_indicator ~ ~1 ~ 0.4 0.4 0.4 0.2 5
effect give @s minecraft:wither 10 2 true
effect give @s minecraft:slowness 10 1 true
effect give @s minecraft:weakness 10 1 true
effect give @s minecraft:darkness 10 1 true
particle minecraft:smoke ~ ~1 ~ 1 1 1 0.2 50
playsound minecraft:entity.wither.death master @a[distance=..25] ~ ~ ~ 1 1.3
#scoreboard players set $strength player_motion.api.launch -15000
#function player_motion:api/launch_looking
damage @s 5 minecraft:true

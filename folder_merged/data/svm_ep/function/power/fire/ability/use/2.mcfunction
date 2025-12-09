execute as @s[type=player,advancements={svm_ep:unlocked_ability/fire/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=75..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.fire_ability_02_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 75
scoreboard players add @s svm_ep.used_move 225
scoreboard players set @s svm_ep.p.fire_arms 900
scoreboard players set @s svm_ep.p.fire_ability_02_delay 1200
execute at @s run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 0.73
execute at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.8
execute at @s run particle minecraft:dust{color:[18000000f,1f,0.1f],scale:2f} ~ ~0.7 ~ 0.25 0.25 0.25 0 10
execute at @s run particle minecraft:flame ~ ~0.7 ~ 0.25 0.25 0.25 0.2 30
effect give @s minecraft:slowness 1 2 true
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.fire_arms_ring"]}
execute at @s run scoreboard players set @e[tag=svm_ep.fire_arms_ring,limit=1,sort=nearest] svm_ep.lifetime 1
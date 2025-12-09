execute as @s[type=player,advancements={svm_ep:unlocked_ability/explosion/6=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=15..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.explosion_ability_06_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players set @s svm_ep.using_move 700
scoreboard players set @s svm_ep.p.explosion_ability_06_delay 40
execute at @s run playsound minecraft:entity.ender_dragon.ambient master @a[distance=..15] ~ ~ ~ 1 0
effect give @s minecraft:slowness 5 4 true
execute as @s[type=player,advancements={svm_ep:unlocked_ability/phase/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=20..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.phase_ability_08_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move


function svm_ep:system/gamemode/save
scoreboard players set @s svm_ep.using_move 1227



scoreboard players add @s svm_ep.used_move 160

scoreboard players remove @s svm_ep.mana 20

scoreboard players set @s svm_ep.p.phase_ability_08_delay 80

scoreboard players set @s[scores={svm_ep.p.phase_awakening_lenght=1..}] svm_ep.p.phase_ability_08_delay 60

execute at @s run playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 3 1
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 3.7 0.4
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.35 120
tag @s add svm_ep.phase_first_tick
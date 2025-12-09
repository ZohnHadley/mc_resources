scoreboard players remove @s svm_ep.p.flora_inescapable_garden_castor 1
scoreboard players remove @s svm_ep.p.flora_inescapable_garden_mode_change_tick 1
scoreboard players add @s svm_ep.p.flora_ability_16_delay 1

execute as @s[scores={svm_ep.p.flora_inescapable_garden_mode=1,svm_ep.p.flora_inescapable_garden_mode_change_tick=..0}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/cooldowns
execute as @s[scores={svm_ep.p.flora_inescapable_garden_mode=2,svm_ep.p.flora_inescapable_garden_mode_change_tick=..0}] unless entity @s[scores={svm_ep.using_move=1..}] run scoreboard players add @s svm_ep.mana_charge 35
execute as @s[scores={svm_ep.p.flora_inescapable_garden_mode=3,svm_ep.p.flora_inescapable_garden_mode_change_tick=1}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/inescapable_garden/glow_mobs

execute at @s[scores={svm_ep.p.flora_inescapable_garden_mode_change_tick=6}] run playsound minecraft:block.bell.use master @a[distance=..25] ~ ~ ~ 1.5 0.85
execute at @s[scores={svm_ep.p.flora_inescapable_garden_mode_change_tick=1}] run playsound minecraft:block.stone_button.click_on master @a[distance=..25] ~ ~ ~ 1.6 1.85
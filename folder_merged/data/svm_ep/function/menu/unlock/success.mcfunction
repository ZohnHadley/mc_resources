$advancement grant @s only svm_ep:unlocked_ability/$(ability)
$scoreboard players remove @s svm_ep.ability_points $(cost)

execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~1 ~
execute at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 20
execute at @s run playsound minecraft:entity.firework_rocket.twinkle ui @a[distance=..15] ~ ~ ~ 1 1.3
execute at @s run playsound minecraft:ui.cartography_table.take_result ui @a[distance=..15] ~ ~ ~ 1 2
#function svm_ep:system/message/ability_points_left
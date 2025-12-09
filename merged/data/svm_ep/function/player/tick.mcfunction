execute as @s[predicate=svm_ep:time_stopped] run return run function svm_ep:time/stopped_player

scoreboard players add @s svm_ep.tick 1
execute as @s[scores={svm_ep.menu=1..}] run function svm_ep:menu/trigger
execute as @s[scores={svm_ep.toggle_power=1..}] run function svm_ep:menu/toggle_power
execute as @s[scores={svm_ep.switch_hotbar=1..}] run function svm_ep:menu/hotbar/switch
execute as @s[scores={svm_ep.z.bind_ability=1..}] run function svm_ep:menu/bind_ability
execute as @s[scores={svm_ep.z.bind_ability.slot=1..}] run function svm_ep:menu/bind/full_trigger


scoreboard players remove @s svm_ep.checked_click 1


#MANA
function svm_ep:mana/tick




#UIs
execute as @s[scores={svm_ep.selected_ability=1..}] run function svm_ep:player/ui




#QUICK EFFECTS
scoreboard players remove @s[scores={svm_ep.clear_slowness=1..}] svm_ep.clear_slowness 1
scoreboard players remove @s[scores={svm_ep.clear_levitation=1..}] svm_ep.clear_levitation 1
scoreboard players remove @s[scores={svm_ep.clear_speed=1..}] svm_ep.clear_speed 1
scoreboard players remove @s[scores={svm_ep.clear_blindness=1..}] svm_ep.clear_blindness 1
scoreboard players remove @s[scores={svm_ep.clear_strength=1..}] svm_ep.clear_strength 1
effect clear @s[scores={svm_ep.clear_slowness=1}] slowness
effect clear @s[scores={svm_ep.clear_levitation=1}] levitation
effect clear @s[scores={svm_ep.clear_speed=1}] speed
effect clear @s[scores={svm_ep.clear_blindness=1}] blindness
effect clear @s[scores={svm_ep.clear_strength=1}] strength






execute as @s[scores={svm_ep.r.click=1..}] at @s run function svm_ep:player/right_click
execute as @s[scores={svm_ep.shaking=1..}] at @s run function svm_ep:system/shake
execute as @s[predicate=svm_ep:walking_or_running] run function svm_ep:player/walking_or_running
execute as @s[scores={svm_ep.bamblock=1..}] run function svm_ep:items/bamboo/blocking
execute as @s[scores={svm_ep.golden_beetroot_boost=1..}] run function svm_ep:items/golden/beetroot_boost
scoreboard players remove @s[scores={svm_ep.hammer_delay=1..}] svm_ep.hammer_delay 1
scoreboard players remove @s[scores={svm_ep.tengu_delay=1..}] svm_ep.tengu_delay 1
execute as @s[scores={svm_ep.charged_tengu=1..}] at @s run function svm_ep:items/tengu/charged
execute as @s[scores={svm_ep.charged_hammer=1..}] at @s run function svm_ep:items/hammer/charged
execute as @s[scores={svm_ep.check_click=1..}] at @s run function svm_ep:system/click_check/tick

execute at @s as @e[type=item_display,tag=svm_ep.block,distance=..15] unless score @s svm_ep.block_updated_at >= %WORLD input.tick at @s run function svm_ep:block/tick

execute unless entity @s[scores={svm_ep.p.harpie_movement=1},tag=svm_ep.harpie_user] run clear @s minecraft:elytra[minecraft:custom_data~{svm_ep.harpie_wings:1b}]






#ITEMS
execute if items entity @s[tag=svm_ep.power_user] weapon.offhand *[minecraft:custom_data~{svm_ep.power_reseter:1b}] run function svm_ep:items/scroll/held_offhand_reseter
execute if items entity @s weapon.offhand *[minecraft:custom_data~{svm_ep.chooser:1b}] run function svm_ep:items/chooser/choose
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.chooser:1b}] run function svm_ep:items/chooser/held


function #svm_ep:player_tick



#execute as @s[scores={svm_ep.fogged=1..}] at @s run function svm_ep:system/fogged_tick

return 0
##############################INCRASES LAG
#FOR OPTIMIZATION





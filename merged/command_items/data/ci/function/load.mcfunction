
#scoreboard objectives add ci.input.right_click minecraft.used:minecraft.warped_fungus_on_a_stick

#scoreboard objectives add ci.input.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add ci.math dummy
scoreboard objectives add ci.world_data dummy
scoreboard objectives add ci.tick dummy

scoreboard players set %20 ci.math 20
scoreboard players set %3 ci.math 3
execute store result score %period ci.world_data run scoreboard players get %period ci.world_data

execute store result score %installed ci.world_data run function a:open_menu
execute if score %installed ci.world_data matches 0 run tellraw @a [{text:"[!]",color:dark_red},{"text":" Server needs a full reload to properly install all of LG's Command Items content ",color:red},{text:"[!]",color:dark_red}]
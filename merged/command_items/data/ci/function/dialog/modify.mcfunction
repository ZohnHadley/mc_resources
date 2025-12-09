

data remove storage ci:creator temp




#$say $(input) $(slot) $(command) $(cooldown_length) $(optional_data)



$data modify storage ci:creator temp.input set value $(input)
$data modify storage ci:creator temp.slot set value $(slot)
$data modify storage ci:creator temp.compiled.command set value '$(command)'
$data modify storage ci:creator temp.optional_data set value $(optional_data)
data remove storage ci:creator temp.optional_data.empty
data modify storage ci:creator temp.compiled merge from storage ci:creator temp.optional_data
data remove storage ci:creator temp.optional_data


$scoreboard players set %cooldown_length ci.math $(cooldown_length)
execute store result storage ci:creator temp.compiled.cooldown.length int 1.0 run scoreboard players get %cooldown_length ci.math
execute unless score %cooldown_length ci.math matches 1.. run data remove storage ci:creator temp.compiled.cooldown





tag @s add executor
execute summon minecraft:item_display run function ci:dialog/modify_as_item_display with storage ci:creator temp
tag @s remove executor

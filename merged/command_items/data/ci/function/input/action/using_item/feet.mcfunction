#REQUIRED ARGUMENTS equipment.feet using_item feet 

#CHECK IF SWAP
execute if items entity @s armor.feet *[minecraft:custom_data~{using_item:{feet:{only_command:{}}}}] run return run function ci:command with entity @s equipment.feet.components.minecraft:custom_data.using_item.feet

tag @s remove ci.cd
data remove storage ci:temp data
data modify storage ci:temp data set from entity @s equipment.feet.components.minecraft:custom_data.using_item.feet

execute if items entity @s armor.feet *[minecraft:custom_data~{using_item:{feet:{cooldown:{}}}}] run tag @s add ci.cd
execute if items entity @s armor.feet *[minecraft:custom_data~{using_item:{feet:{swap_items_on_trigger:{}}}}] run scoreboard players set %swap_item ci.math 1
execute store result score %consume ci.math if items entity @s armor.feet *[minecraft:custom_data~{using_item:{feet:{consume:{}}}}]


execute as @s[tag=!ci.cd] if score %consume ci.math matches 1.. run item modify entity @s armor.feet {function:"minecraft:set_count",count:-1,add:1}
execute as @s[tag=!ci.cd] run return run function ci:command with storage ci:temp data






#IF HAS COOLDOWN
execute store result score %cooldown_period ci.math run data get storage ci:temp data.cooldown.period
execute store result score %cooldown_current ci.math run data get storage ci:temp data.cooldown.till
execute unless score %cooldown_period ci.math = %period ci.world_data run scoreboard players set %cooldown_current ci.math 0
scoreboard players operation %cooldown_current ci.math -= %WORLD ci.tick
execute if score %cooldown_current ci.math matches ..0 run scoreboard players set %cooldown_current ci.math 0


#IF ON COOLDOWN - SHOW MESSAGE (IF CAN)
execute if score %cooldown_current ci.math matches 1.. if score %cooldown_current ci.math <= %highest_cooldown ci.world_data run return run execute if data storage ci:temp {data:{show_cooldown:{}}} run function ci:other/message/on_cooldown


#GET NEW COOLDOWN
execute store result score %cooldown_new ci.math run data get storage ci:temp data.cooldown.length


#INSIDE THE FUNCTION (COMMAND) YOU CAN MODIFY THE COOLDOWN (scoreboard players add/remove %cooldown_new ci.math) TO YOUR LIKING
 #RUN THE FUNCTION
function ci:command with storage ci:temp data
 
 #CONSUME IF CONCUMABLE
execute if score %consume ci.math matches 1.. run item modify entity @s armor.feet {function:"minecraft:set_count",count:-1,add:1}

#STOP IF ITEM CLEARED
execute unless items entity @s armor.feet * run return 0




#COOLDOWN LOGIC
scoreboard players operation %highest_cooldown ci.world_data > %cooldown_new ci.math
scoreboard players operation %cooldown_new ci.math += %WORLD ci.tick


execute store result storage ci:item cooldown.till int 1.0 run scoreboard players get %cooldown_new ci.math
execute store result storage ci:item cooldown.period int 1.0 run scoreboard players get %period ci.world_data
item modify entity @s armor.feet {function:"minecraft:copy_custom_data",source:{type:"minecraft:storage",source:"ci:item"},ops:[{source:"cooldown",target:"using_item.feet.cooldown",op:"merge"}]}

return 2
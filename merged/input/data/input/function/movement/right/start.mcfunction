advancement revoke @s only input:movement/right/tick

scoreboard players set @s input.right_time 1
execute if score @s[scores={input.last_movement_input=4}] input.double_frame >= @s input.tick run return run function #input:movement/double_click
scoreboard players set @s input.last_movement_input 4
scoreboard players operation @s input.double_frame = @s input.tick
scoreboard players operation @s input.double_frame += doubleClickFrames input.settings
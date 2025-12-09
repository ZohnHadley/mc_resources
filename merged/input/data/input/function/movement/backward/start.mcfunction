advancement revoke @s only input:movement/backward/tick

scoreboard players set @s input.backward_time 1
execute if score @s[scores={input.last_movement_input=2}] input.double_frame >= @s input.tick run return run function #input:movement/double_click
scoreboard players set @s input.last_movement_input 2
scoreboard players operation @s input.double_frame = @s input.tick
scoreboard players operation @s input.double_frame += doubleClickFrames input.settings
advancement revoke @s only input:jump/tick
function #input:jump/click
scoreboard players set @s input.jump_time 1
execute as @s[scores={input.jumped=1..}] run function input:jump/jumped

execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{jump:1b}}}} run return run function #input:jump/end


advancement revoke @s only input:jump/tick
scoreboard players add @s input.jump_time 1
function #input:jump/tick
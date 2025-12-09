execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:1b}}}} run return run function input:movement/left/end


advancement revoke @s only input:movement/left/tick
scoreboard players add @s input.left_time 1

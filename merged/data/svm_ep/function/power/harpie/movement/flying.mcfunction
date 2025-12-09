scoreboard players set $strength player_motion.api.launch 700
execute if predicate svm_ep:input/left if predicate svm_ep:input/right run scoreboard players set $strength player_motion.api.launch 180

#function player_motion:api/launch_looking
execute if predicate svm_ep:input/left if predicate svm_ep:input/right at @s anchored eyes facing ^ ^ ^1 run return run function player_motion:api/launch_looking
execute if predicate svm_ep:input/left at @s anchored eyes facing ^5 ^ ^0.1 run function player_motion:api/launch_looking
execute if predicate svm_ep:input/right at @s anchored eyes facing ^-5 ^ ^0.1 run function player_motion:api/launch_looking
execute as @s[tag=svm_ep.power_user] run return fail
$execute if score $(power)Obtainable svm_ep.gamerule matches 0 run return 0
$function svm_ep:items/scroll/power_held_offhand_macro with storage svm_ep:power id[{power:$(power)}]


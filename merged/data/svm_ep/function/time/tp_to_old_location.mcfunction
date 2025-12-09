
$data modify entity @s Health set value $(health)
$scoreboard players set @s svm_ep.mana $(mana)

$execute in $(dimension) run tp @s $(pos_x) $(pos_y) $(pos_z) $(rot_x) $(rot_y)


execute as @s[type=!player] run return 0

$scoreboard players set @s svm_ep.restore_health $(health)
effect give @s minecraft:instant_health 1 252 true

execute as @s[tag=!svm_ep.time_user] run return 0
$function svm_ep:time/tp_to_old_location_player {"accelerated":"$(accelerated)","accelerated_level":"$(accelerated_level)"}

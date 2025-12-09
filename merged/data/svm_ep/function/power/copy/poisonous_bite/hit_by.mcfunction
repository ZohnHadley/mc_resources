execute if score @s svm_ep.p.copy_mob_cooldown > %WORLD svm_ep.tick run return run scoreboard players set %COPIED_ABILITY svm_ep.numbers -5

execute store result score %VICTIM_HEALTH svm_ep.numbers run data get entity @s Health
scoreboard players operation %USER_HEALTH svm_ep.numbers -= %VICTIM_HEALTH svm_ep.numbers
execute if score %USER_HEALTH svm_ep.numbers matches ..0 run return 0

scoreboard players operation @s svm_ep.p.copy_mob_cooldown = %WORLD svm_ep.tick
scoreboard players operation @s svm_ep.p.copy_mob_cooldown += %copy_mob_cooldown svm_ep.world_settings



scoreboard players reset %COPIED_ABILITY svm_ep.numbers

execute as @s[type=#svm_ep:copy/has_ability/armadillo_armor] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 2
execute as @s[type=#svm_ep:copy/has_ability/underwater_adaptation] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 3
execute as @s[type=#svm_ep:copy/has_ability/night_vision] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 4
execute as @s[type=#svm_ep:copy/has_ability/fireball] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 5
execute as @s[type=#svm_ep:copy/has_ability/fire_adaptation] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 6
execute as @s[type=#svm_ep:copy/has_ability/wind_charge] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 7
execute as @s[type=#svm_ep:copy/has_ability/poisonous_bite] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 8
execute as @s[type=#svm_ep:copy/has_ability/heart_of_the_creaking] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 9
execute as @s[type=#svm_ep:copy/has_ability/self_destruct] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 10
execute as @s[type=#svm_ep:copy/has_ability/guardians_watch] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 11
execute as @s[type=#svm_ep:copy/has_ability/dragons_breath] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 12
execute as @s[type=#svm_ep:copy/has_ability/teleportation] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 13
execute as @s[type=#svm_ep:copy/has_ability/fangs_of_the_mansion] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 14
execute as @s[type=#svm_ep:copy/has_ability/invisibility] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 15
execute as @s[type=#svm_ep:copy/has_ability/mushroom_refill] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 16
execute as @s[type=#svm_ep:copy/has_ability/shulker_bullet] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 17
execute as @s[type=#svm_ep:copy/has_ability/cobweb_launch] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 18
execute as @s[type=#svm_ep:copy/has_ability/sonic_boom] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 19
execute as @s[type=#svm_ep:copy/has_ability/withering_touch] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 20
execute as @s[type=#svm_ep:copy/has_ability/wither_skull] if function svm_ep:power/copy/copy/check_copy_state run scoreboard players set %COPIED_ABILITY svm_ep.numbers 21







execute as @s[tag=svm_ep.power_user] run function svm_ep:power/copy/copy/check_power_ability


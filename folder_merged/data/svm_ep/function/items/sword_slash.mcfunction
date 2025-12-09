execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.sword_slash"]}

tp @e[tag=svm_ep.sword_slash] @s
execute at @s anchored eyes run tp @e[tag=svm_ep.sword_slash] ^ ^-0.26 ^2.315
execute as @e[tag=svm_ep.sword_slash] at @s run tp @s ~ ~ ~ ~-90 ~
execute as @e[tag=svm_ep.sword_slash] at @s run function svm_ep:system/start_random_rotation_y
execute as @e[tag=svm_ep.sword_slash] at @s run function svm_ep:system/get_rotation
execute as @s as @e[tag=svm_ep.sword_slash,scores={rot.y=35..}] at @s run tp @s ~ ~ ~ ~ 35
execute as @s as @e[tag=svm_ep.sword_slash,scores={rot.y=..-35}] at @s run tp @s ~ ~ ~ ~ -35
function svm_ep:system/get_fall
execute as @s[nbt={OnGround:0b}] as @e[tag=svm_ep.sword_slash] at @s run tp @s ~ ~ ~ ~ ~100

execute at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..30] ~ ~ ~ 0.6 1.3
execute at @e[tag=svm_ep.sword_slash] run function svm_ep:items/sword_slash_particles
kill @e[tag=svm_ep.sword_slash]
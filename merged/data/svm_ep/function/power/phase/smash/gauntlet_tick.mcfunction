tp @s ~ ~-0.75 ~
scoreboard players add @s svm_ep.lifetime 1


item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:gauntlet_foreshadow"]
execute as @s[scores={svm_ep.lifetime=2}] at @s run data merge entity @s {item_display:"head",interpolation_start:-1,interpolation_duration:4,transformation:{scale:[2f,2f,2f]}}
execute as @s[scores={svm_ep.lifetime=19}] at @s run data merge entity @s {item_display:"head",interpolation_start:-1,interpolation_duration:2,transformation:{scale:[3f,3f,3f]}}
execute as @s[scores={svm_ep.lifetime=22}] at @s run data merge entity @s {item_display:"head",interpolation_start:-1,interpolation_duration:3,transformation:{scale:[0f,0f,0f]}}

execute as @s[scores={svm_ep.lifetime=20}] run function svm_ep:power/phase/smash/smash
kill @s[scores={svm_ep.lifetime=24}]
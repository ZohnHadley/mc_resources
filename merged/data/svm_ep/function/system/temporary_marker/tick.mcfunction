execute as @s[tag=!svm_ep.temporary_marker_setup] run function svm_ep:system/temporary_marker/setup
scoreboard players add @s svm_ep.lifetime 1


execute as @s[scores={svm_ep.lifetime=1..}] run kill @s

execute at @s run tp @s[scores={svm_ep.colloseum_build=1}] ~ ~ ~ ~-11.25 ~
execute at @s[scores={svm_ep.colloseum_build=1}] run playsound minecraft:entity.warden.emerge ambient @a[distance=..60] ~ ~1 ~ 6 1.4

execute at @s run tp @s ~ ~ ~ ~-22.5 ~
execute at @s positioned ^ ^-1 ^25 run summon marker ~ ~ ~ {Tags:["svm_ep.colloseum_pillar_placement","svm_ep.colloseum_pillar1"]}
execute at @s positioned ^ ^-1 ^37 run summon marker ~ ~ ~ {Tags:["svm_ep.colloseum_pillar_placement","svm_ep.colloseum_pillar2"]}
execute at @s positioned ^ ^-1 ^50 run summon marker ~ ~ ~ {Tags:["svm_ep.colloseum_pillar_placement","svm_ep.colloseum_pillar3"]}

execute as @s[scores={svm_ep.colloseum_build=1}] run tag @e[tag=svm_ep.colloseum_pillar_placement,limit=1] add svm_ep.colloseum_pillar_active

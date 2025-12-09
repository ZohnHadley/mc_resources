execute as @s[scores={svm_ep.lifetime=1}] run data merge entity @s {teleport_duration:1,transformation:{scale:[37.05f,2f,37.05f]},interpolation_duration:15,start_interpolation:-1}
execute as @s[scores={svm_ep.lifetime=15}] run data merge entity @s {teleport_duration:1,transformation:{scale:[55.05f,0.05f,55.05f]},interpolation_duration:6,start_interpolation:-1}
execute as @s[scores={svm_ep.lifetime=21}] run data merge entity @s {teleport_duration:1,transformation:{scale:[111.05f,111.05f,111.05f]},interpolation_duration:25,start_interpolation:-1}
execute at @s[scores={svm_ep.lifetime=22..55}] run tp @s ~ ~ ~ ~11.5 ~
execute at @s[scores={svm_ep.lifetime=22..30}] run tp @s ~ ~ ~ ~11.25 ~
execute at @s[scores={svm_ep.lifetime=22..25}] run tp @s ~ ~ ~ ~22.25 ~
execute at @s[scores={svm_ep.lifetime=22..80}] run tp @s ~ ~ ~ ~11.25 ~
execute at @s[scores={svm_ep.lifetime=80..90}] run tp @s ~ ~ ~ ~5.25 ~
execute at @s[scores={svm_ep.lifetime=90..100}] run tp @s ~ ~ ~ ~2.25 ~


scoreboard players add @s svm_ep.lifetime 1
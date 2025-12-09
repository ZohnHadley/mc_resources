execute at @s run tp @s[scores={svm_ep.lifetime=..-60}] ~ ~ ~ ~11.25 ~
execute at @s run tp @s[scores={svm_ep.lifetime=-73..-60}] ~ ~ ~ ~11.25 ~

execute at @s[scores={svm_ep.lifetime=-110..-90}] positioned ^ ^ ^3 run function svm_ep:power/gravity/blast/tick/blue
execute at @s[scores={svm_ep.lifetime=-110..-90}] positioned ^ ^ ^-3 run function svm_ep:power/gravity/blast/tick/red

execute at @s[scores={svm_ep.lifetime=-90..-80}] positioned ^ ^ ^2.5 run function svm_ep:power/gravity/blast/tick/blue
execute at @s[scores={svm_ep.lifetime=-90..-80}] positioned ^ ^ ^-2.5 run function svm_ep:power/gravity/blast/tick/red

execute at @s[scores={svm_ep.lifetime=-80..-75}] positioned ^ ^ ^2 run function svm_ep:power/gravity/blast/tick/blue
execute at @s[scores={svm_ep.lifetime=-80..-75}] positioned ^ ^ ^-2 run function svm_ep:power/gravity/blast/tick/red

execute at @s[scores={svm_ep.lifetime=-75..-70}] positioned ^ ^ ^1.5 run function svm_ep:power/gravity/blast/tick/blue
execute at @s[scores={svm_ep.lifetime=-75..-70}] positioned ^ ^ ^-1.5 run function svm_ep:power/gravity/blast/tick/red

execute at @s[scores={svm_ep.lifetime=-70..-65}] positioned ^ ^ ^1 run function svm_ep:power/gravity/blast/tick/blue
execute at @s[scores={svm_ep.lifetime=-70..-65}] positioned ^ ^ ^-1 run function svm_ep:power/gravity/blast/tick/red

execute at @s[scores={svm_ep.lifetime=-65..-60}] positioned ^ ^ ^0.5 run function svm_ep:power/gravity/blast/tick/blue
execute at @s[scores={svm_ep.lifetime=-65..-60}] positioned ^ ^ ^-0.5 run function svm_ep:power/gravity/blast/tick/red


execute at @s[scores={svm_ep.lifetime=-60}] run playsound minecraft:block.amethyst_block.break master @a[distance=..40] ~ ~ ~ 2 1.1
execute at @s[scores={svm_ep.lifetime=-60}] run particle minecraft:flash{color:0xffffffff}
execute at @s[scores={svm_ep.lifetime=-60}] run particle end_rod ~ ~ ~ 0 0 0 0.5 400
execute at @s[scores={svm_ep.lifetime=-60}] run function svm_ep:power/gravity/blast/tick/purple
execute at @s[scores={svm_ep.lifetime=-32}] run effect give @e[distance=..15] minecraft:slowness 1 4 true
#execute at @s[scores={svm_ep.lifetime=-32}] run effect clear @e[distance=..15] minecraft:slowness
execute at @s[scores={svm_ep.lifetime=-50..}] run function svm_ep:power/gravity/blast/tick/purple_trail
execute at @s[scores={svm_ep.lifetime=-50..}] run function svm_ep:power/gravity/blast/tick/flash
execute at @s[scores={svm_ep.lifetime=-32}] run function svm_ep:power/gravity/blast/tick/shoot


#execute at @s[scores={svm_ep.lifetime=-50..-40}] run 


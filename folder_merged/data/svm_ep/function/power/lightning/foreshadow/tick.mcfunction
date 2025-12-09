scoreboard players remove @s svm_ep.p.lightning_foreshadowing 1
scoreboard players add @s svm_ep.p.lightning_foreshadowing_frame 1
scoreboard players add @s[scores={svm_ep.using_move=1..}] svm_ep.p.lightning_foreshadowing 1

effect give @s[scores={svm_ep.p.lightning_foreshadowing=20..}] minecraft:speed 1 2 true
effect give @s[scores={svm_ep.p.lightning_foreshadowing=20..,svm_ep.p.lightning_foreshadowing_stage=1..}] minecraft:speed 1 3 true
effect give @s[scores={svm_ep.p.lightning_foreshadowing=20..,svm_ep.p.lightning_foreshadowing_stage=2..}] minecraft:speed 1 4 true
effect give @s[scores={svm_ep.p.lightning_foreshadowing=20..,svm_ep.p.lightning_foreshadowing_stage=3..}] minecraft:speed 1 5 true
effect give @s[scores={svm_ep.p.lightning_foreshadowing=20..,svm_ep.p.lightning_foreshadowing_stage=4..}] minecraft:speed 1 7 true
effect give @s[scores={svm_ep.p.lightning_foreshadowing=20..,svm_ep.p.lightning_foreshadowing_stage=5..}] minecraft:speed 1 9 true
execute at @s[scores={svm_ep.p.lightning_foreshadowing_frame=3}] run function svm_ep:power/lightning/foreshadow/summon
scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_frame=3..}] svm_ep.p.lightning_foreshadowing_frame 1
scoreboard players reset @s[scores={svm_ep.p.lightning_foreshadowing=0}] svm_ep.p.lightning_foreshadowing_stage
execute at @s run particle glow ~ ~0.7 ~ 0.3 0.7 0.3 4 5

#execute as @s[scores={svm_ep.p.lightning_foreshadowing_frame=1..2}] at @s run tp @s ^-2.25 ^ ^ ~-25 ~
#execute as @s[scores={svm_ep.p.lightning_foreshadowing_frame=3..4}] at @s run tp @s ^2.25 ^ ^ ~25 ~
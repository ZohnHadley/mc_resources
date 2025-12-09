scoreboard players add @s svm_ep.lifetime 1



execute at @s run tp @s ^ ^ ^0.53
execute at @s if block ~ ~ ~ air run tp @s ^ ^ ^0.85

execute at @s positioned ^ ^ ^3 run summon minecraft:lightning_bolt
execute at @s positioned ^1.5 ^ ^1 run summon minecraft:lightning_bolt
execute at @s positioned ^-1.5 ^ ^1 run summon minecraft:lightning_bolt
execute at @s positioned ^ ^1.5 ^1 run summon minecraft:lightning_bolt
execute at @s positioned ^ ^-1.5 ^1 run summon minecraft:lightning_bolt
execute at @s run particle minecraft:large_smoke ~ ~ ~ 4 4 4 0.4 30



execute at @s[scores={svm_ep.lifetime=1..20}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack","svm_ep.crack_erase"]}
execute at @s[scores={svm_ep.lifetime=20..35}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_4","svm_ep.crack","svm_ep.crack_erase"]}
execute at @s[scores={svm_ep.lifetime=35..45}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_5","svm_ep.crack","svm_ep.crack_erase"]}
execute at @s[scores={svm_ep.lifetime=45..50}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_6","svm_ep.crack","svm_ep.crack_erase"]}
execute at @s[scores={svm_ep.lifetime=50..70}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_7","svm_ep.crack","svm_ep.crack_erase"]}




kill @s[scores={svm_ep.lifetime=80..}]
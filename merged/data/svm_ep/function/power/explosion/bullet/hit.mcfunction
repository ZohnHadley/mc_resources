execute as @s[scores={svm_ep.p.explosion_bullet_charge=..20}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}
execute as @s[scores={svm_ep.p.explosion_bullet_charge=21..40}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}
execute as @s[scores={svm_ep.p.explosion_bullet_charge=41..64}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_4","svm_ep.crack"]}
execute as @s[scores={svm_ep.p.explosion_bullet_charge=65..79}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_5","svm_ep.crack"]}
execute as @s[scores={svm_ep.p.explosion_bullet_charge=80..94}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_6","svm_ep.crack"]}
execute as @s[scores={svm_ep.p.explosion_bullet_charge=95..}] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_7","svm_ep.crack"]}

execute as @e[tag=!same_id,distance=..5,type=!#svm_ep:technical] run function svm_ep:power/explosion/bullet/hitby
scoreboard players add @a[distance=..25] svm_ep.shaking 5
execute as @s[scores={svm_ep.p.explosion_bullet_charge=21..79}] run scoreboard players add @a[distance=..25] svm_ep.shaking 5
execute as @s[scores={svm_ep.p.explosion_bullet_charge=80..}] run scoreboard players add @a[distance=..25] svm_ep.shaking 15

particle minecraft:explosion ~ ~ ~ 0.75 0.75 0.75 0 3 force @a[distance=..70]
execute as @s[scores={svm_ep.p.explosion_bullet_charge=..19}] run function svm_ep:power/explosion/small/visual/1
execute as @s[scores={svm_ep.p.explosion_bullet_charge=20..39}] run function svm_ep:power/explosion/small/visual/2
execute as @s[scores={svm_ep.p.explosion_bullet_charge=40..59}] run function svm_ep:power/explosion/small/visual/3
execute as @s[scores={svm_ep.p.explosion_bullet_charge=60..79}] run function svm_ep:power/explosion/small/visual/4
execute as @s[scores={svm_ep.p.explosion_bullet_charge=80..}] run function svm_ep:power/explosion/small/visual/5


scoreboard players operation @s svm_ep.numbers = @s svm_ep.p.explosion_bullet_charge
scoreboard players operation @s svm_ep.numbers /= %explosion_bullet_damage_divisor svm_ep.world_settings
execute as @e[tag=hit_by] store result score @s svm_ep.deal_damage run scoreboard players get @e[tag=same_id,limit=1] svm_ep.level
execute as @e[tag=hit_by] run scoreboard players operation @s svm_ep.deal_damage /= %explosion_bullet_damage_divisor2 svm_ep.world_settings
execute as @e[tag=hit_by] run scoreboard players operation @s svm_ep.deal_damage += @e[tag=executor,limit=1] svm_ep.numbers

execute as @e[tag=hit_by] run function svm_ep:damage/deal_normal {"damage":"4","attacker":"@e[limit=1,tag=same_id]","type":"mob_attack"}
tag @e remove hit_by
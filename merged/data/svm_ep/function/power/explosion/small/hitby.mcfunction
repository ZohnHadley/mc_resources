
scoreboard players set %DAMAGE_DIVISOR svm_ep.numbers 1
execute as @s[distance=2..] run scoreboard players add %DAMAGE_DIVISOR svm_ep.numbers 1
execute as @s[distance=3..] run scoreboard players add %DAMAGE_DIVISOR svm_ep.numbers 1
execute as @s[distance=4..] run scoreboard players add %DAMAGE_DIVISOR svm_ep.numbers 2
execute as @s[distance=5..] run scoreboard players add %DAMAGE_DIVISOR svm_ep.numbers 2
execute as @s[distance=6..] run scoreboard players add %DAMAGE_DIVISOR svm_ep.numbers 3
execute as @s[distance=7..] run scoreboard players add %DAMAGE_DIVISOR svm_ep.numbers 3



execute as @s[dx=0] run scoreboard players set %DAMAGE_DIVISOR svm_ep.numbers 1
execute as @s[dx=1] run scoreboard players set %DAMAGE_DIVISOR svm_ep.numbers 1

scoreboard players operation @s svm_ep.deal_damage = %DAMAGE svm_ep.numbers
scoreboard players operation @s svm_ep.deal_damage /= %DAMAGE_DIVISOR svm_ep.numbers


function svm_ep:damage/deal_normal {"damage":"0","attacker":"@e[limit=1,tag=executor]","type":"no_cooldown"}
tag @s remove hitby
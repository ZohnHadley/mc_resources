scoreboard players set %STATE svm_ep.numbers 1

execute as @s[tag=executor] run return 0
damage @s 3.5 svm_ep:no_cooldown_projectile by @n[tag=executor]
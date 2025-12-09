function svm_ep:damage/deal_normal {"damage":"5","attacker":"@e[limit=1,tag=executor]","type":"no_cooldown"}
particle minecraft:crit ~ ~0.8 ~ 0.3 0.7 0.3 0.3 5
playsound minecraft:entity.player.attack.crit hostile @a[distance=..13] ~ ~1 ~ 1.6 0.8
effect give @s slowness 1 0 true

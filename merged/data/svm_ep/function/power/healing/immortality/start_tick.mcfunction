execute at @s[scores={svm_ep.using_move=599}] run function svm_ep:power/healing/immortality/particles {"pos":"0.1","charge":"charge"}
execute at @s[scores={svm_ep.using_move=598}] run function svm_ep:power/healing/immortality/particles {"pos":"0.36","charge":"charge"}
execute at @s[scores={svm_ep.using_move=597}] run function svm_ep:power/healing/immortality/particles {"pos":"0.62","charge":"charge"}
execute at @s[scores={svm_ep.using_move=596}] run function svm_ep:power/healing/immortality/particles {"pos":"0.87","charge":"charge"}
execute at @s[scores={svm_ep.using_move=595}] run function svm_ep:power/healing/immortality/particles {"pos":"1.13","charge":"charge"}
execute at @s[scores={svm_ep.using_move=594}] run function svm_ep:power/healing/immortality/particles {"pos":"1.39","charge":"charge"}
execute at @s[scores={svm_ep.using_move=593}] run function svm_ep:power/healing/immortality/particles {"pos":"1.65","charge":"charge"}
execute at @s[scores={svm_ep.using_move=592}] run function svm_ep:power/healing/immortality/particles {"pos":"1.91","charge":"charge"}
execute at @s[scores={svm_ep.using_move=591}] run function svm_ep:power/healing/immortality/particles {"pos":"2.16","charge":"charge"}
execute at @s[scores={svm_ep.using_move=590}] run function svm_ep:power/healing/immortality/particles {"pos":"2.42","charge":"charge"}
execute at @s[scores={svm_ep.using_move=589}] run function svm_ep:power/healing/immortality/particles {"pos":"2.68","charge":"charge"}
execute at @s[scores={svm_ep.using_move=588}] run function svm_ep:power/healing/immortality/particles {"pos":"2.94","charge":"charge"}
execute at @s[scores={svm_ep.using_move=587}] run function svm_ep:power/healing/immortality/particles {"pos":"3.19","charge":"charge"}
execute at @s[scores={svm_ep.using_move=586}] run function svm_ep:power/healing/immortality/particles {"pos":"3.45","charge":"charge"}
execute at @s[scores={svm_ep.using_move=585}] run function svm_ep:power/healing/immortality/particles {"pos":"3.71","charge":"charge"}
execute at @s[scores={svm_ep.using_move=584}] run function svm_ep:power/healing/immortality/particles {"pos":"3.97","charge":"charge"}
execute at @s[scores={svm_ep.using_move=583}] run function svm_ep:power/healing/immortality/particles {"pos":"4.23","charge":"charge"}
execute at @s[scores={svm_ep.using_move=582}] run function svm_ep:power/healing/immortality/particles {"pos":"4.48","charge":"charge"}
execute at @s[scores={svm_ep.using_move=581}] run function svm_ep:power/healing/immortality/particles {"pos":"4.74","charge":"charge"}
execute at @s[scores={svm_ep.using_move=580}] run function svm_ep:power/healing/immortality/particles {"pos":"5.0","charge":"charge"}

execute at @s[scores={svm_ep.using_move=575..580}] run function svm_ep:power/healing/immortality/ring_charge
execute at @s[scores={svm_ep.using_move=554}] run particle minecraft:sonic_boom ~ ~1 ~


execute as @s[scores={svm_ep.using_move=550..}] run return 0


scoreboard players reset @s svm_ep.using_move
scoreboard players set @s svm_ep.p.healing_immortality 11111
playsound minecraft:entity.warden.sonic_boom master @a[distance=..25] ~ ~1 ~ 1 0.8
effect give @s minecraft:speed 1 5 true
effect give @a[distance=..10] minecraft:blindness 2 1 true
scoreboard players add @a[distance=..10] svm_ep.shaking 25

function svm_ep:power/healing/immortality/ring_charged
function svm_ep:power/healing/immortality/particles {"pos":"0.1","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"0.36","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"0.62","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"0.87","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"1.13","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"1.39","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"1.65","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"1.91","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"2.16","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"2.42","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"2.68","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"2.94","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"3.19","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"3.45","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"3.71","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"3.97","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"4.23","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"4.48","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"4.74","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"5.0","charge":"charged"}

function svm_ep:power/healing/immortality/ring_charged
function svm_ep:power/healing/immortality/particles {"pos":"0.1","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"0.36","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"0.62","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"0.87","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"1.13","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"1.39","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"1.65","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"1.91","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"2.16","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"2.42","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"2.68","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"2.94","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"3.19","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"3.45","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"3.71","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"3.97","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"4.23","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"4.48","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"4.74","charge":"charged"}
function svm_ep:power/healing/immortality/particles {"pos":"5.0","charge":"charged"}
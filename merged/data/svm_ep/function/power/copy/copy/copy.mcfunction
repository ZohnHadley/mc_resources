
execute if score %COPIED_ABILITY svm_ep.numbers matches 2 run return run function svm_ep:power/copy/copy/copied {id:"02",name:"Armadillo Armor"}
execute if score %COPIED_ABILITY svm_ep.numbers matches 3 run return run function svm_ep:power/copy/copy/copied {id:"03",name:"Underwater Adaptation"}
execute if score %COPIED_ABILITY svm_ep.numbers matches 4 run return run function svm_ep:power/copy/copy/copied {id:"04",name:"Night Vision"}
execute if score %COPIED_ABILITY svm_ep.numbers matches 5 run return run function svm_ep:power/copy/copy/copied {id:"05",name:"Fireball"}
execute if score %COPIED_ABILITY svm_ep.numbers matches 6 run return run function svm_ep:power/copy/copy/copied {id:"06",name:"Fire Adaptation"}
execute if score %COPIED_ABILITY svm_ep.numbers matches 7 run return run function svm_ep:power/copy/copy/copied {id:"07",name:"Wind Charge"}
execute if score %COPIED_ABILITY svm_ep.numbers matches 8 run return run function svm_ep:power/copy/copy/copied {id:"08",name:"Poisonous Bite"}
execute if score %COPIED_ABILITY svm_ep.numbers matches 9 run return run function svm_ep:power/copy/copy/copied {id:"09",name:"Heart of The Creaking"}

execute store result storage svm_ep:numbers input.id int 1 run scoreboard players get %COPIED_ABILITY svm_ep.numbers
execute if score %COPIED_ABILITY svm_ep.numbers matches 10 run data modify storage svm_ep:numbers input.name set value "Selft-Destruct"
execute if score %COPIED_ABILITY svm_ep.numbers matches 11 run data modify storage svm_ep:numbers input.name set value "Guadrians watch"
execute if score %COPIED_ABILITY svm_ep.numbers matches 12 run data modify storage svm_ep:numbers input.name set value "Dragons Breath"
execute if score %COPIED_ABILITY svm_ep.numbers matches 13 run data modify storage svm_ep:numbers input.name set value "Teleportation"
execute if score %COPIED_ABILITY svm_ep.numbers matches 14 run data modify storage svm_ep:numbers input.name set value "Fangs of The Mansion"
execute if score %COPIED_ABILITY svm_ep.numbers matches 15 run data modify storage svm_ep:numbers input.name set value "Invisibility"
execute if score %COPIED_ABILITY svm_ep.numbers matches 16 run data modify storage svm_ep:numbers input.name set value "Mooshroom Refill"
execute if score %COPIED_ABILITY svm_ep.numbers matches 17 run data modify storage svm_ep:numbers input.name set value "Shulker bullet"
execute if score %COPIED_ABILITY svm_ep.numbers matches 18 run data modify storage svm_ep:numbers input.name set value "Cobwed Launch"
execute if score %COPIED_ABILITY svm_ep.numbers matches 19 run data modify storage svm_ep:numbers input.name set value "Sonic Boom"
execute if score %COPIED_ABILITY svm_ep.numbers matches 20 run data modify storage svm_ep:numbers input.name set value "Withering Touch"
execute if score %COPIED_ABILITY svm_ep.numbers matches 21 run data modify storage svm_ep:numbers input.name set value "Wither Head"

execute if score %COPIED_ABILITY svm_ep.numbers matches 22 run data modify storage svm_ep:numbers input.name set value "Phase Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 23 run data modify storage svm_ep:numbers input.name set value "Lightning Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 24 run data modify storage svm_ep:numbers input.name set value "Flora Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 25 run data modify storage svm_ep:numbers input.name set value "Slime Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 26 run data modify storage svm_ep:numbers input.name set value "Explosion Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 27 run data modify storage svm_ep:numbers input.name set value "Ice Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 28 run data modify storage svm_ep:numbers input.name set value "Gravity Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 29 run data modify storage svm_ep:numbers input.name set value "Harpie Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 30 run data modify storage svm_ep:numbers input.name set value "Dimensional Traveler Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 31 run data modify storage svm_ep:numbers input.name set value "Fire Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 32 run data modify storage svm_ep:numbers input.name set value "Void Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 33 run data modify storage svm_ep:numbers input.name set value "Time Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 34 run data modify storage svm_ep:numbers input.name set value "Healing Power"
execute if score %COPIED_ABILITY svm_ep.numbers matches 35 run data modify storage svm_ep:numbers input.name set value "Death Power"

function svm_ep:power/copy/copy/copied with storage svm_ep:numbers input
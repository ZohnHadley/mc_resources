#$data modify storage svm_ep:player_data temp set from storage svm_ep:player_data player.$(id)

$execute store result score @s[scores={svm_ep.ability0=10001..}] svm_ep.ability0 run data get storage svm_ep:ability ability.$(0).id_number
$execute store result score @s[scores={svm_ep.ability1=10001..}] svm_ep.ability1 run data get storage svm_ep:ability ability.$(1).id_number
$execute store result score @s[scores={svm_ep.ability2=10001..}] svm_ep.ability2 run data get storage svm_ep:ability ability.$(2).id_number
$execute store result score @s[scores={svm_ep.ability3=10001..}] svm_ep.ability3 run data get storage svm_ep:ability ability.$(3).id_number
$execute store result score @s[scores={svm_ep.ability4=10001..}] svm_ep.ability4 run data get storage svm_ep:ability ability.$(4).id_number
$execute store result score @s[scores={svm_ep.ability5=10001..}] svm_ep.ability5 run data get storage svm_ep:ability ability.$(5).id_number
$execute store result score @s[scores={svm_ep.ability6=10001..}] svm_ep.ability6 run data get storage svm_ep:ability ability.$(6).id_number
$execute store result score @s[scores={svm_ep.ability7=10001..}] svm_ep.ability7 run data get storage svm_ep:ability ability.$(7).id_number
$execute store result score @s[scores={svm_ep.ability8=10001..}] svm_ep.ability8 run data get storage svm_ep:ability ability.$(8).id_number
function svm_ep:player/update_slot

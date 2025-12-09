$data modify storage svm_ep:ability ability.$(id) set value $(data)
$data modify storage svm_ep:ability ability.$(id).id set value $(id)

$scoreboard objectives remove svm_ep.ability.cooldown.$(id)
$scoreboard objectives add svm_ep.ability.cooldown.$(id) dummy

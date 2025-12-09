
$execute if items entity @s $(container) *[minecraft:custom_data~{$(input):{$(slot):{}}}] run function ci:input/action/$(input)/$(slot)

function ci:input/after
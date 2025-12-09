#GET CD
scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.non_power.ability_9992_delay
function svm_ep:system/cooldown/calculate

#NOT ON CD
$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" ","color":"#0210ad"},{"text":"H","color":"#1b1eb8"},{"text":"o","color":"#342cc3"},{"text":"l","color":"#4d3ace"},{"text":"l","color":"#6648da"},{"text":"o","color":"#7f56e5"},{"text":"w","color":"#9864f0"},{"text":" ","color":"#b272fc"},{"text":"P","color":"#ae61da"},{"text":"u","color":"#aa51b8"},{"text":"r","color":"#a64196"},{"text":"p","color":"#a23074"},{"text":"l","color":"#9e2052"},{"text":"e","color":"#9a1030"},{"text":" ","color":"#96000f"},{"text":"|","color":"gray"}]

#ON CD
function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#1c1c1c"},{"text":"H","strikethrough":true,"color":"#313131"},{"text":"o","strikethrough":true,"color":"#474747"},{"text":"l","strikethrough":true,"color":"#5c5c5c"},{"text":"l","strikethrough":true,"color":"#727272"},{"text":"o","strikethrough":true,"color":"#878787"},{"text":"w","strikethrough":true,"color":"#9d9d9d"},{"text":" ","strikethrough":true,"color":"#b3b3b3"},{"text":"P","strikethrough":true,"color":"#a4a4a4"},{"text":"u","strikethrough":true,"color":"#959595"},{"text":"r","strikethrough":true,"color":"#868686"},{"text":"p","strikethrough":true,"color":"#777777"},{"text":"l","strikethrough":true,"color":"#686868"},{"text":"e","strikethrough":true,"color":"#595959"},{"text":" ","strikethrough":true,"color":"#4a4a4a"},{"text":"|","color":"gray"},$(cooldown_display)]


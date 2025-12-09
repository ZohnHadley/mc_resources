$title @s actionbar [$(mana_display),{"text":" M","color":"#C13900"},{"text":"e","color":"#DD390D"},{"text":"t","color":"#E94E23"},{"text":"e","color":"#F57C49"},{"text":"o","color":"#FEAD5D"},{"text":"r S","color":"#FFD989"},{"text":"h","color":"#FEAD5D"},{"text":"o","color":"#F57C49"},{"text":"w","color":"#E94E23"},{"text":"e","color":"#DD390D"},{"text":"r ","color":"#C13900"},{"text":"|","color":"gray"}]

#OLD
#$title @s[scores={svm_ep.p.4fun_ability_02_delay=1..}] actionbar [$(mana_display),{"text":" Me","strikethrough":true,"color":"gray"},{"text":"te","strikethrough":true,"color":"#C6C6C6"},{"text":"or Sho","strikethrough":true,"color":"#DFDFDF"},{"text":"we","strikethrough":true,"color":"#C6C6C6"},{"text":"r ","strikethrough":true,"color":"gray"},{"text":"|","color":"gray"}]

#NEW
execute as @s[scores={svm_ep.p.4fun_ability_02_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.4fun_ability_02_delay
execute as @s[scores={svm_ep.p.4fun_ability_02_delay=1..}] run function svm_ep:power/delay
$title @s[scores={svm_ep.p.4fun_ability_02_delay=1..}] actionbar [$(mana_display),{"text":" Me","strikethrough":true,"color":"gray"},{"text":"te","strikethrough":true,"color":"#C6C6C6"},{"text":"or Sho","strikethrough":true,"color":"#DFDFDF"},{"text":"we","strikethrough":true,"color":"#C6C6C6"},{"text":"r ","strikethrough":true,"color":"gray"},{"text":"|","color":"gray"},$(cooldown_display)]


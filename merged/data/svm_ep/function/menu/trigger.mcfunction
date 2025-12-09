#tellraw @s[scores={svm_ep.menu=..99}] [{"text":"<-----","color":"white","bold":true}]
execute as @s[scores={svm_ep.menu=1}] run function svm_ep:menu/generic with storage svm_ep:menu main
execute as @s[scores={svm_ep.menu=2}] run dialog show @s {type:"minecraft:confirmation",title:"s",yes:{label:""},no:{label:""}}
execute as @s[scores={svm_ep.menu=2}] run dialog clear @s
execute as @s[scores={svm_ep.menu=3}] run function svm_ep:menu/help with storage svm_ep:menu faq
execute as @s[scores={svm_ep.menu=4}] run function svm_ep:menu/help_moves
execute as @s[scores={svm_ep.menu=4},tag=svm_ep.power_user] run function svm_ep:menu/help_moves_after
execute as @s[scores={svm_ep.menu=5}] run dialog show @s svm_ep:items_info/main
execute as @s[scores={svm_ep.menu=6}] run function svm_ep:menu/cosmetics
#execute as @s[scores={svm_ep.menu=7}] run function svm_ep:menu/blessing
#execute as @s[scores={svm_ep.menu=8}] run function svm_ep:menu/talent
#execute as @s[scores={svm_ep.menu=9}] run function svm_ep:menu/miracle
execute as @s[scores={svm_ep.menu=10}] run function svm_ep:menu/settings
execute as @s[scores={svm_ep.menu=11..20}] run function svm_ep:menu/hotbar/hotbar
execute as @s[scores={svm_ep.menu=20..30}] run function svm_ep:menu/bind/bind
execute as @s[scores={svm_ep.menu=31}] if function a:update_item run tellraw @s [{"text":"Updated an item","color":"blue"}]

#execute as @s[scores={svm_ep.menu=2..}] at @s run playsound minecraft:ui.loom.select_pattern ui @s ~ ~ ~ 2 1



execute as @s[scores={svm_ep.menu=1000..1999,svm_ep.player_permissions=1..}] run function svm_ep:menu/owner
execute as @s[scores={svm_ep.menu=2000..2999}] run function svm_ep:menu/cosmetics/sword_slash

function #svm_ep:menu
#tellraw @s[scores={svm_ep.menu=..99}] [{"text":"----->","color":"white","bold":true}]

execute as @s[scores={svm_ep.menu=3000..3999}] run function svm_ep:menu/settings/apply
execute as @s[scores={svm_ep.menu=10000..19999}] run function svm_ep:menu/bind/bind
execute as @s[scores={svm_ep.menu=20000..99999}] run function svm_ep:menu/unlock
execute as @s[scores={svm_ep.menu=100000..199999}] run function svm_ep:menu/settings/apply

scoreboard players reset @s svm_ep.menu
scoreboard players enable @s svm_ep.menu
scoreboard players enable @s svm_ep.z.bind_ability.slot

scoreboard players operation @s svm_ep.menu -= %20000 svm_ep.numbers

#tellraw @s ["",{"text":"|","color":"gray"},{"text":" S","color":"red"},{"text":"uccess","color":"#FF696B"},{"text":"fully","color":"#FF7778"},{"text":" u","color":"#FF8486"},{"text":"n","color":"#FF8F91"},{"text":"l","color":"#FF9FA1"},{"text":"o","color":"#FF8F91"},{"text":"c","color":"#FF8486"},{"text":"ked a","color":"#FF7778"},{"text":"n abilit","color":"#FF696B"},{"text":"y","color":"red"}]

#execute as @s[scores={svm_ep.menu=1,svm_ep.level=5..},advancements={svm_ep:unlocked_ability/phase/1=false}] run return run function svm_ep:menu/unlock/check {"ability":"phase/1","cost":"5"}
execute as @s[scores={svm_ep.menu=2}] run return run function svm_ep:menu/unlock/check {"ability":"phase/2","cost":"10"}
execute as @s[scores={svm_ep.menu=3}] run return run function svm_ep:menu/unlock/check {"ability":"phase/3","cost":"15"}


execute as @s[scores={svm_ep.menu=4}] run return run function svm_ep:menu/unlock/check {"ability":"lightning/2","cost":"15"}
execute as @s[scores={svm_ep.menu=5}] run return run function svm_ep:menu/unlock/check {"ability":"lightning/3","cost":"15"}
execute as @s[scores={svm_ep.menu=6}] run return run function svm_ep:menu/unlock/check {"ability":"lightning/4","cost":"70"}

execute as @s[scores={svm_ep.menu=7}] run return run function svm_ep:menu/unlock/check {"ability":"flora/2","cost":"5"}
execute as @s[scores={svm_ep.menu=8}] run return run function svm_ep:menu/unlock/check {"ability":"flora/3","cost":"5"}
execute as @s[scores={svm_ep.menu=9}] run return run function svm_ep:menu/unlock/check {"ability":"flora/4","cost":"15"}
execute as @s[scores={svm_ep.menu=10}] run return run function svm_ep:menu/unlock/check {"ability":"flora/5","cost":"25"}

execute as @s[scores={svm_ep.menu=11}] run return run function svm_ep:menu/unlock/check {"ability":"slime/2","cost":"10"}
execute as @s[scores={svm_ep.menu=12}] run return run function svm_ep:menu/unlock/check {"ability":"slime/3","cost":"10"}
execute as @s[scores={svm_ep.menu=13}] run return run function svm_ep:menu/unlock/check {"ability":"slime/4","cost":"5"}
execute as @s[scores={svm_ep.menu=14}] run return run function svm_ep:menu/unlock/check {"ability":"slime/5","cost":"10"}
execute as @s[scores={svm_ep.menu=15}] run return run function svm_ep:menu/unlock/check {"ability":"slime/6","cost":"5"}

execute as @s[scores={svm_ep.menu=16}] run return run function svm_ep:menu/unlock/check {"ability":"explosion/2","cost":"10"}
execute as @s[scores={svm_ep.menu=17}] run return run function svm_ep:menu/unlock/check {"ability":"explosion/3","cost":"15"}
execute as @s[scores={svm_ep.menu=18}] run return run function svm_ep:menu/unlock/check {"ability":"explosion/4","cost":"10"}
execute as @s[scores={svm_ep.menu=19}] run return run function svm_ep:menu/unlock/check {"ability":"explosion/5","cost":"5"}
execute as @s[scores={svm_ep.menu=20}] run return run function svm_ep:menu/unlock/check {"ability":"explosion/6","cost":"40"}

execute as @s[scores={svm_ep.menu=21}] run return run function svm_ep:menu/unlock/check {"ability":"ice/2","cost":"5"}
execute as @s[scores={svm_ep.menu=22}] run return run function svm_ep:menu/unlock/check {"ability":"ice/3","cost":"10"}
execute as @s[scores={svm_ep.menu=24}] run return run function svm_ep:menu/unlock/check {"ability":"ice/4","cost":"15"}
execute as @s[scores={svm_ep.menu=23}] run return run function svm_ep:menu/unlock/check {"ability":"ice/5","cost":"15"}

execute as @s[scores={svm_ep.menu=25}] run return run function svm_ep:menu/unlock/check {"ability":"gravity/2","cost":"10"}
execute as @s[scores={svm_ep.menu=26}] run return run function svm_ep:menu/unlock/check {"ability":"gravity/3","cost":"15"}
execute as @s[scores={svm_ep.menu=27}] run return run function svm_ep:menu/unlock/check {"ability":"gravity/4","cost":"15"}
execute as @s[scores={svm_ep.menu=28}] run return run function svm_ep:menu/unlock/check {"ability":"gravity/5","cost":"10"}
execute as @s[scores={svm_ep.menu=29}] run return run function svm_ep:menu/unlock/check {"ability":"gravity/6","cost":"20"}

execute as @s[scores={svm_ep.menu=30}] run return run function svm_ep:menu/unlock/check {"ability":"harpie/2","cost":"10"}
execute as @s[scores={svm_ep.menu=31}] run return run function svm_ep:menu/unlock/check {"ability":"harpie/3","cost":"15"}


execute as @s[scores={svm_ep.menu=32}] run return run function svm_ep:menu/unlock/check {"ability":"dimension_traveler/2","cost":"20"}
execute as @s[scores={svm_ep.menu=33}] run return run function svm_ep:menu/unlock/check {"ability":"dimension_traveler/3","cost":"15"}
execute as @s[scores={svm_ep.menu=34}] run return run function svm_ep:menu/unlock/check {"ability":"dimension_traveler/4","cost":"15"}
execute as @s[scores={svm_ep.menu=35}] run return run function svm_ep:menu/unlock/check {"ability":"dimension_traveler/5","cost":"15"}
execute as @s[scores={svm_ep.menu=36}] run return run function svm_ep:menu/unlock/check {"ability":"dimension_traveler/6","cost":"15"}

execute as @s[scores={svm_ep.menu=37}] run return run function svm_ep:menu/unlock/check {"ability":"fire/2","cost":"15"}
execute as @s[scores={svm_ep.menu=38}] run return run function svm_ep:menu/unlock/check {"ability":"fire/3","cost":"15"}
execute as @s[scores={svm_ep.menu=39}] run return run function svm_ep:menu/unlock/check {"ability":"fire/4","cost":"5"}
execute as @s[scores={svm_ep.menu=40}] run return run function svm_ep:menu/unlock/check {"ability":"fire/5","cost":"30"}
execute as @s[scores={svm_ep.menu=41}] run return run function svm_ep:menu/unlock/check {"ability":"fire/6","cost":"20"}
execute as @s[scores={svm_ep.menu=42}] run return run function svm_ep:menu/unlock/check {"ability":"fire/7","cost":"10"}


execute as @s[scores={svm_ep.menu=43}] run return run function svm_ep:menu/unlock/check {"ability":"slime/7","cost":"15"}
execute as @s[scores={svm_ep.menu=44}] run return run function svm_ep:menu/unlock/check {"ability":"slime/8","cost":"30"}

execute as @s[scores={svm_ep.menu=45}] run return run function svm_ep:menu/unlock/check {"ability":"lightning/6","cost":"20"}
execute as @s[scores={svm_ep.menu=46}] run return run function svm_ep:menu/unlock/check {"ability":"lightning/7","cost":"10"}

execute as @s[scores={svm_ep.menu=47}] run return run function svm_ep:menu/unlock/check {"ability":"phase/4","cost":"20"}

execute as @s[scores={svm_ep.menu=48}] run return run function svm_ep:menu/unlock/check {"ability":"flora/6","cost":"15"}

execute as @s[scores={svm_ep.menu=49}] run return run function svm_ep:menu/unlock/check {"ability":"void/2","cost":"10"}
execute as @s[scores={svm_ep.menu=50}] run return run function svm_ep:menu/unlock/check {"ability":"void/3","cost":"5"}
execute as @s[scores={svm_ep.menu=51}] run return run function svm_ep:menu/unlock/check {"ability":"void/4","cost":"10"}
execute as @s[scores={svm_ep.menu=52}] run return run function svm_ep:menu/unlock/check {"ability":"void/5","cost":"150"}

execute as @s[scores={svm_ep.menu=53}] run return run function svm_ep:menu/unlock/check {"ability":"flora/16","cost":"10"}
execute as @s[scores={svm_ep.menu=54}] run return run function svm_ep:menu/unlock/check {"ability":"flora/14","cost":"5"}

execute as @s[scores={svm_ep.menu=55}] run return run function svm_ep:menu/unlock/check {"ability":"harpie/4","cost":"10"}
execute as @s[scores={svm_ep.menu=56}] run return run function svm_ep:menu/unlock/check {"ability":"harpie/5","cost":"10"}

execute as @s[scores={svm_ep.menu=57}] run return run function svm_ep:menu/unlock/check {"ability":"ice/6","cost":"15"}
execute as @s[scores={svm_ep.menu=58}] run return run function svm_ep:menu/unlock/check {"ability":"ice/7","cost":"15"}

execute as @s[scores={svm_ep.menu=59}] run return run function svm_ep:menu/unlock/check {"ability":"time/2","cost":"15"}
execute as @s[scores={svm_ep.menu=60}] run return run function svm_ep:menu/unlock/check {"ability":"time/3","cost":"10"}
execute as @s[scores={svm_ep.menu=61}] run return run function svm_ep:menu/unlock/check {"ability":"time/4","cost":"25"}
execute as @s[scores={svm_ep.menu=62}] run return run function svm_ep:menu/unlock/check {"ability":"time/5","cost":"50"}

execute as @s[scores={svm_ep.menu=63}] run return run function svm_ep:menu/unlock/check {"ability":"fire/8","cost":"250"}

execute as @s[scores={svm_ep.menu=64}] run return run function svm_ep:menu/unlock/check {"ability":"healing/2","cost":"5"}
execute as @s[scores={svm_ep.menu=65}] run return run function svm_ep:menu/unlock/check {"ability":"healing/3","cost":"10"}
execute as @s[scores={svm_ep.menu=66}] run return run function svm_ep:menu/unlock/check {"ability":"healing/4","cost":"15"}
execute as @s[scores={svm_ep.menu=67}] run return run function svm_ep:menu/unlock/check {"ability":"healing/5","cost":"25"}
execute as @s[scores={svm_ep.menu=68}] run return run function svm_ep:menu/unlock/check {"ability":"healing/6","cost":"175"}

execute as @s[scores={svm_ep.menu=69}] run return run function svm_ep:menu/unlock/check {"ability":"death/2","cost":"5"}
execute as @s[scores={svm_ep.menu=70}] run return run function svm_ep:menu/unlock/check {"ability":"death/3","cost":"10"}
execute as @s[scores={svm_ep.menu=71}] run return run function svm_ep:menu/unlock/check {"ability":"death/4","cost":"20"}
execute as @s[scores={svm_ep.menu=72}] run return run function svm_ep:menu/unlock/check {"ability":"death/5","cost":"80"}
execute as @s[scores={svm_ep.menu=73}] run return run function svm_ep:menu/unlock/check {"ability":"death/6","cost":"25"}

execute as @s[scores={svm_ep.menu=74}] run return run function svm_ep:menu/unlock/check {"ability":"harpie/6","cost":"15"}

execute as @s[scores={svm_ep.menu=75}] run return run function svm_ep:system/message/ability_unlocked
execute as @s[scores={svm_ep.menu=76}] run return run function svm_ep:system/message/custom_unlock_requirement

execute as @s[scores={svm_ep.menu=77}] run return run function svm_ep:menu/unlock/check {"ability":"water/2","cost":"5"}
execute as @s[scores={svm_ep.menu=78}] run return run function svm_ep:menu/unlock/check {"ability":"water/3","cost":"8"}
execute as @s[scores={svm_ep.menu=79}] run return run function svm_ep:menu/unlock/check {"ability":"water/4","cost":"15"}
execute as @s[scores={svm_ep.menu=80}] run return run function svm_ep:menu/unlock/check {"ability":"water/5","cost":"5"}
execute as @s[scores={svm_ep.menu=81}] run return run function svm_ep:menu/unlock/check {"ability":"water/6","cost":"75"}

execute as @s[scores={svm_ep.menu=82}] run return run function svm_ep:menu/unlock/check {"ability":"flora/6","cost":"5"}
execute as @s[scores={svm_ep.menu=83}] run return run function svm_ep:menu/unlock/check {"ability":"flora/7","cost":"15"}
execute as @s[scores={svm_ep.menu=84}] run return run function svm_ep:menu/unlock/check {"ability":"flora/8","cost":"10"}
execute as @s[scores={svm_ep.menu=85}] run return run function svm_ep:menu/unlock/check {"ability":"flora/9","cost":"25"}

#execute as @s[tag=unlocked_ability] run tellraw @s ["",{"text":"|","color":"gray"},{"text":" S","color":"red"},{"text":"uccess","color":"#FF696B"},{"text":"fully","color":"#FF7778"},{"text":" u","color":"#FF8486"},{"text":"n","color":"#FF8F91"},{"text":"l","color":"#FF9FA1"},{"text":"o","color":"#FF8F91"},{"text":"c","color":"#FF8486"},{"text":"ked a","color":"#FF7778"},{"text":"n abilit","color":"#FF696B"},{"text":"y","color":"red"}]
#execute as @s[tag=!unlocked_ability] run tellraw @s ["",{"text":"|","color":"gray"},{"text":" S","color":"red"},{"text":"om","color":"#FF6063"},{"text":"eth","color":"#FF7678"},{"text":"ing went wr","color":"#FF888A"},{"text":"o","color":"#FF7678"},{"text":"n","color":"#FF6063"},{"text":"g ","color":"red"},{"text":"(","color":"gray"},{"text":"a","color":"#C7C7C7"},{"text":"b","color":"#CFCFCF"},{"text":"ility u","color":"#D8D8D8"},{"text":"nloc","color":"#E3E3E3"},{"text":"ke","color":"#EEEEEE"},{"text":"d/p","color":"white"},{"text":"aym","color":"#EEEEEE"},{"text":"ents no","color":"#E3E3E3"},{"text":"t m","color":"#D8D8D8"},{"text":"e","color":"#CFCFCF"},{"text":"t","color":"#C7C7C7"},{"text":")","color":"gray"}]


#tag @s remove unlocked_ability
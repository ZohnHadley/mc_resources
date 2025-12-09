#function svm_ep:menu/setup

data remove storage svm_ep:menu main
data modify storage svm_ep:menu main.title set value [{"text":" ","color":"#4f4d4d"},{"text":"S","color":"#ff8706"},{"text":"V","color":"#ff9716"},{"text":"M","color":"#ffa727"},{"text":" ","color":"#ffb738"},{"text":"P","color":"#ffc748"},{"text":"o","color":"#ffd759"},{"text":"w","color":"#ffe76a"},{"text":"e","color":"#fff87b"},{"text":"r","color":"#ffe76a"},{"text":"s","color":"#ffd759"},{"text":" ","color":"#ffc748"},{"text":"M","color":"#ffb738"},{"text":"e","color":"#ffa727"},{"text":"n","color":"#ff9716"},{"text":"u","color":"#ff8706"}]
data modify storage svm_ep:menu main.ability_points set value [{"text":"Ab","color":"aqua"},{"text":"il","color":"#8FFFFF"},{"text":"it","color":"#CAFFFF"},{"text":"y Po","color":"#EEFFFF"},{"text":"in","color":"#CAFFFF"},{"text":"t","color":"#8FFFFF"},{"text":"s","color":"aqua"},{"text":": ","color":"gray"}]
data modify storage svm_ep:menu main.faq set value [{"text":"F","color":"#ff0834"},{"text":"A","color":"#ff0652"},{"text":"Q","color":"#ff0834"}]
data modify storage svm_ep:menu main.power_info set value [{"text":"P","color":"#ff8107"},{"text":"o","color":"#ff9617"},{"text":"w","color":"#ffab27"},{"text":"e","color":"#ffc137"},{"text":"r","color":"#ffd647"},{"text":" ","color":"#ffec58"},{"text":"I","color":"#ffd143"},{"text":"n","color":"#ffb62f"},{"text":"f","color":"#ff9b1b"},{"text":"o","color":"#ff8107"}]
data modify storage svm_ep:menu main.items_info set value [{"text":"I","color":"#56ff61"},{"text":"t","color":"#76fe7f"},{"text":"e","color":"#97fd9e"},{"text":"m","color":"#b8fcbc"},{"text":"s","color":"#d9fbdb"},{"text":" ","color":"#fafafa"},{"text":"I","color":"#d1fbd3"},{"text":"n","color":"#a8fcad"},{"text":"f","color":"#7ffd87"},{"text":"o","color":"#56ff61"}]
data modify storage svm_ep:menu main.settings set value [{"text":"S","color":"#c20618"},{"text":"e","color":"#d11f27"},{"text":"t","color":"#e03837"},{"text":"t","color":"#ef5147"},{"text":"i","color":"#ff6a57"},{"text":"n","color":"#ea4842"},{"text":"g","color":"#d6272d"},{"text":"s","color":"#c20618"}]
data modify storage svm_ep:menu main.discord set value [{"text":"D","color":"#4b2dff"},{"text":"i","color":"#684cff"},{"text":"s","color":"#866cff"},{"text":"c","color":"#a48cff"},{"text":"o","color":"#c2acff"},{"text":"r","color":"#866cff"},{"text":"d","color":"#4b2dff"}]

data remove storage svm_ep:menu faq
data modify storage svm_ep:menu faq.title set value [{"text":"F","color":"#ff092a"},{"text":"r","color":"#ff1b38"},{"text":"e","color":"#ff2d46"},{"text":"q","color":"#ff3f54"},{"text":"u","color":"#ff5162"},{"text":"e","color":"#ff6370"},{"text":"n","color":"#ff757e"},{"text":"t","color":"#ff878c"},{"text":"l","color":"#ff999a"},{"text":"y","color":"#ffaba8"},{"text":" ","color":"#ffbdb6"},{"text":"A","color":"#ffcfc4"},{"text":"s","color":"#ffe1d2"},{"text":"k","color":"#fff3e0"},{"text":"e","color":"#ffdfd0"},{"text":"d","color":"#ffccc1"},{"text":" ","color":"#ffb8b2"},{"text":"Q","color":"#ffa5a3"},{"text":"u","color":"#ff9194"},{"text":"e","color":"#ff7e85"},{"text":"s","color":"#ff6a75"},{"text":"t","color":"#ff5766"},{"text":"i","color":"#ff4357"},{"text":"o","color":"#ff3048"},{"text":"n","color":"#ff1c39"},{"text":"s","color":"#ff092a"}]


#THIS WILL BE REMIOVEd
#data remove storage svm_ep:menu power
#data modify storage svm_ep:menu power.title set value [{"text":"P",color:"#03ffb8"},{"text":"o",color:"#2dfec5"},{"text":"w",color:"#58fdd2"},{"text":"e",color:"#82fcdf"},{"text":"r",color:"#adfbec"},{"text":" ",color:"#d8fafa"},{"text":"I",color:"#a2fbe9"},{"text":"n",color:"#6dfcd9"},{"text":"f",color:"#38fdc8"},{"text":"o",color:"#03ffb8"}]
#THIS WILL BE REMIOVEd



#function #svm_ep:menu/setup_power
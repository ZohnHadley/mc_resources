data merge storage svm_ep:player_data {temp:{0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0}}
$data modify storage svm_ep:player_data temp merge from storage svm_ep:player_data player.$(id)
function svm_ep:system/apply_binded_ability2 with storage svm_ep:player_data temp

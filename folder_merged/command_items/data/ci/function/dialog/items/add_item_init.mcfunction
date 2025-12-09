data modify storage ci:temp add_item set value {new_args:'{\"section\":\"$(section)\",\"id\":\"$(id)\",\"command\":\"$(command)\",\"name\":\"$(name)\",\"color\":\"$(color)\"}'}
$data modify storage ci:temp add_item.section set value $(section)

function ci:dialog/items/display_add_item with storage ci:temp add_item

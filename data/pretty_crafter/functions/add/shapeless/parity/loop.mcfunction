### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## １つずつチェックしてparityに保存
data modify storage pretty_crafter: _.items1 set from storage pretty_crafter: recipe.items
execute store result storage pretty_crafter: mismatch int 1 run data modify storage pretty_crafter: _.items1[] set from storage pretty_crafter: _.items2[-1]

## parityの値をweightとしてソート対象リストに追加
data modify storage natural_merge_sort: List append from storage pretty_crafter: _.items2[-1]
data modify storage natural_merge_sort: List[-1].weight set from storage pretty_crafter: mismatch
data remove storage pretty_crafter: _.items2[-1]

## まだチェック対象が残っているなら繰り返し
execute if data storage pretty_crafter: _.items2[0] run function pretty_crafter:add/shapeless/parity/loop

### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## パリティ計算
data modify storage natural_merge_sort: List set value []
data modify storage pretty_crafter: _.items2 set from storage pretty_crafter: recipe.items
function pretty_crafter:add/shapeless/parity/loop
## 数の少ない順番に並び替えてからitemsに戻す
function #natural_merge_sort:descend
data modify storage pretty_crafter: recipe.items set from storage natural_merge_sort: List
data remove storage pretty_crafter: recipe.items[].weight
## parityも小さい順にしてから保存
function #natural_merge_sort:ascend
data modify storage pretty_crafter: recipe.parity set value []
data modify storage pretty_crafter: recipe.parity append from storage natural_merge_sort: List[].weight

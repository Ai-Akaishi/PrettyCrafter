### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 素材アイテムをコピー
data modify storage pretty_crafter: _.items set from storage pretty_crafter: items
## パリティ計算
data modify storage pretty_crafter: parity set value []
data modify storage pretty_crafter: _.items2 set from storage pretty_crafter: recipe_candidates[-1].items
function pretty_crafter:find/shapeless/calc_parity
## パリティを満たしているかチェック
execute store result storage pretty_crafter: mismatch byte 1 run data modify storage pretty_crafter: parity set from storage pretty_crafter: recipe_candidates[-1].parity

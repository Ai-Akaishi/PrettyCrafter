### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## １つずつチェックしてparityに保存
data modify storage pretty_crafter: _.items1 set from storage pretty_crafter: _.items
execute store result storage pretty_crafter: mismatch int 1 run data modify storage pretty_crafter: _.items1[] merge from storage pretty_crafter: _.items2[-1]
data remove storage pretty_crafter: _.items2[-1]
data modify storage pretty_crafter: parity append from storage pretty_crafter: mismatch

## まだチェック対象が残っているなら繰り返し
execute if data storage pretty_crafter: _.items2[0] run function pretty_crafter:find/shapeless/calc_parity

### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 定形レシピを読み込む
data modify storage pretty_crafter: recipe_candidates set value []
## サイズ計測
data modify storage pretty_crafter: grid_size set value {v:0,h:0}
execute if data storage pretty_crafter: items.0.0 run data modify storage pretty_crafter: grid_size set value {v:1,h:1}
execute if data storage pretty_crafter: items.0.1 run data modify storage pretty_crafter: grid_size.h set value 2
execute if data storage pretty_crafter: items.0.2 run data modify storage pretty_crafter: grid_size.h set value 3
execute if data storage pretty_crafter: items.1 run data modify storage pretty_crafter: grid_size.v set value 2
execute if data storage pretty_crafter: items.2 run data modify storage pretty_crafter: grid_size.v set value 3
## ３段なら1x3
execute if data storage pretty_crafter: grid_size{v:3} run function pretty_crafter:recipe/shaped/v3
## ２段なら1x2
execute if data storage pretty_crafter: grid_size{v:2} run function pretty_crafter:recipe/shaped/v2
## １段なら1x1
execute if data storage pretty_crafter: grid_size{v:1} run function pretty_crafter:recipe/shaped/v1

### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 反転状態を作成する
data remove storage pretty_crafter: flipped
execute if data storage pretty_crafter: items.0.2 run function pretty_crafter:flip/3
execute unless data storage pretty_crafter: items.0.2 if data storage pretty_crafter: items.0.1 run function pretty_crafter:flip/2

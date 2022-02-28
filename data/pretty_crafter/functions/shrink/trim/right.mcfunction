### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## グリッドの右側の空列を消す
execute unless data storage pretty_crafter: items.0.2{} unless data storage pretty_crafter: items.1.2{} unless data storage pretty_crafter: items.2.2{} run function pretty_crafter:shrink/remove/right/2
execute unless data storage pretty_crafter: items.0.2 unless data storage pretty_crafter: items.0.1{} unless data storage pretty_crafter: items.1.1{} unless data storage pretty_crafter: items.2.1{} run function pretty_crafter:shrink/remove/right/1

### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## グリッドの下側の空段を消す
execute unless data storage pretty_crafter: items.2.0{} unless data storage pretty_crafter: items.2.1{} unless data storage pretty_crafter: items.2.2{} run data remove storage pretty_crafter: items.2
execute unless data storage pretty_crafter: items.2 unless data storage pretty_crafter: items.1.0{} unless data storage pretty_crafter: items.1.1{} unless data storage pretty_crafter: items.1.2{} run data remove storage pretty_crafter: items.1
execute unless data storage pretty_crafter: items.1 unless data storage pretty_crafter: items.0.0{} unless data storage pretty_crafter: items.0.1{} unless data storage pretty_crafter: items.0.2{} run data remove storage pretty_crafter: items

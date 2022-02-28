### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 空白はnull埋めしておく
execute unless data storage pretty_crafter: items.0.0.id run data modify storage pretty_crafter: items.0.0 set value null
execute unless data storage pretty_crafter: items.0.1.id run data modify storage pretty_crafter: items.0.1 set value null
execute unless data storage pretty_crafter: items.0.2.id run data modify storage pretty_crafter: items.0.2 set value null
execute unless data storage pretty_crafter: items.1.0.id run data modify storage pretty_crafter: items.1.0 set value null
execute unless data storage pretty_crafter: items.1.1.id run data modify storage pretty_crafter: items.1.1 set value null
execute unless data storage pretty_crafter: items.1.2.id run data modify storage pretty_crafter: items.1.2 set value null
execute unless data storage pretty_crafter: items.2.0.id run data modify storage pretty_crafter: items.2.0 set value null
execute unless data storage pretty_crafter: items.2.1.id run data modify storage pretty_crafter: items.2.1 set value null
execute unless data storage pretty_crafter: items.2.2.id run data modify storage pretty_crafter: items.2.2 set value null

## 左・上→右・下の順
function pretty_crafter:shrink/trim/left
function pretty_crafter:shrink/trim/top
function pretty_crafter:shrink/trim/right
function pretty_crafter:shrink/trim/bottom

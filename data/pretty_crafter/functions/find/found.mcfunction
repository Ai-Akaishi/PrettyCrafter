### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 整形後のアイテムを結果に残しておく
data modify storage pretty_crafter: found.items set from storage pretty_crafter: items
data modify storage pretty_crafter: found.recipe set from storage pretty_crafter: recipe_candidates[-1]

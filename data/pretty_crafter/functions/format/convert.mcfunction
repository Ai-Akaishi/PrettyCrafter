### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## １個だけの不定形レシピを定型レシピとして変換
data modify storage pretty_crafter: _ set from storage pretty_crafter: recipe.items[0]
data modify storage pretty_crafter: recipe.items set value {}
data modify storage pretty_crafter: recipe.items.0.0 set from storage pretty_crafter: _

## 一時データリセット
data remove storage pretty_crafter: _

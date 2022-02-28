### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## レシピ追加

## レシピ形式がOKかどうか確認
data modify storage pretty_crafter: validation set value {}
function pretty_crafter:format/check/has_recipe
execute if data storage pretty_crafter: validation{recipe:true} run function pretty_crafter:format/check/has_category
execute if data storage pretty_crafter: validation{category:true} run function pretty_crafter:format/check/type

## OKならタイプに合わせて追加を試す
execute if data storage pretty_crafter: validation{type:"shaped"} run function pretty_crafter:add/shaped/
execute if data storage pretty_crafter: validation{type:"shapeless"} run function pretty_crafter:add/shapeless/

## 判定用データをリセットする
data remove storage pretty_crafter: validation
## 追加対象リセット
data remove storage pretty_crafter: recipe

## 判定用データをリセットする
data remove storage pretty_crafter: items
data remove storage pretty_crafter: flipped
data remove storage pretty_crafter: _
data remove storage pretty_crafter: recipe_candidates
data remove storage pretty_crafter: recipe_space

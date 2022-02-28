### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## レシピ削除

## レシピ形式がOKかどうか確認
data modify storage pretty_crafter: validation set value {}
function pretty_crafter:format/check/has_recipe_to_remove
execute if data storage pretty_crafter: validation{recipe:true} run function pretty_crafter:format/check/has_category
execute if data storage pretty_crafter: validation{category:true} if data storage pretty_crafter: recipe.items run function pretty_crafter:format/check/type

## OKでタイプがあればタイプに合わせて削除を試す
execute if data storage pretty_crafter: validation{type:"shaped"} run function pretty_crafter:remove/shaped/
execute if data storage pretty_crafter: validation{type:"shapeless"} run function pretty_crafter:remove/shapeless/
## タイプがなければカテゴリだけで削除を試す
execute if data storage pretty_crafter: validation{category:true} unless data storage pretty_crafter: validation.type run function pretty_crafter:remove/all/

## 判定用データをリセットする
data remove storage pretty_crafter: validation
## 削除対象リセット
data remove storage pretty_crafter: recipe

## 判定用データをリセットする
data remove storage pretty_crafter: items
data remove storage pretty_crafter: flipped
data remove storage pretty_crafter: _
data remove storage pretty_crafter: recipe_candidates
data remove storage pretty_crafter: recipe_space

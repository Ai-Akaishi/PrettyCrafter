### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## カテゴリをコピー
data modify storage pretty_crafter: _.category set from storage pretty_crafter: recipe_candidates[-1].category
## 同一カテゴリかチェック
data modify storage pretty_crafter: mismatch set value true
execute if data storage pretty_crafter: recipe.category{} if data storage pretty_crafter: _.category{} store result storage pretty_crafter: mismatch byte 1 run data modify storage pretty_crafter: _.category merge from storage pretty_crafter: recipe.category
execute unless data storage pretty_crafter: recipe.category{} unless data storage pretty_crafter: _.category{} store result storage pretty_crafter: mismatch byte 1 run data modify storage pretty_crafter: _.category set from storage pretty_crafter: recipe.category
## 一致していなければ残すレシピとして保存
execute if data storage pretty_crafter: {mismatch:true} run function pretty_crafter:remove/mismatch

## 一致レシピが未発見で、まだレシピが残っていたら繰り返し
data remove storage pretty_crafter: recipe_candidates[-1]
execute unless data storage pretty_crafter: found if data storage pretty_crafter: recipe_candidates[0] run function pretty_crafter:remove/all/check_each

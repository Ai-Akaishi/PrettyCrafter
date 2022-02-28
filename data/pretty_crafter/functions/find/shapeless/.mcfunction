### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 材料をリストに変換
function pretty_crafter:line/
## レシピ読み込み
function pretty_crafter:recipe/shapeless/
## レシピが読み込まれていればチェック
execute if data storage pretty_crafter: recipe_candidates[0] run function pretty_crafter:find/shapeless/check_each

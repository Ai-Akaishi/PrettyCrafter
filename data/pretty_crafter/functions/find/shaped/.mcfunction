### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 定型レシピを読み込む
function pretty_crafter:recipe/shaped/
## レシピが読み込まれていればクラフトチェック
execute if data storage pretty_crafter: recipe_candidates[0] run function pretty_crafter:find/shaped/check

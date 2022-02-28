### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 保持リストを初期化
data modify storage pretty_crafter: __.recipe_candidates set value []
## レシピが読み込まれていれば既に追加されているか確認
execute if data storage pretty_crafter: recipe_candidates[0] run function pretty_crafter:remove/all/check_each
## 保持リストを新しいレシピとして戻す
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: __.recipe_candidates
data remove storage pretty_crafter: __

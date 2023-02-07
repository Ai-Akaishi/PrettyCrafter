### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 素材アイテムをコピー
data modify storage pretty_crafter: _.items set from storage pretty_crafter: flipped
## タグ持ちレシピなら変換
execute if data storage pretty_crafter: recipe_candidates[-1].tags run function pretty_crafter:find/shaped/tag/apply

## １つめのレシピを満たしているかチェック
## 判定グリッド内に余計なアイテムが入っている時にレシピと一致しないようにするための処理
data modify storage pretty_crafter: _.recipe_items set from storage pretty_crafter: nulls
data modify storage pretty_crafter: _.recipe_items merge from storage pretty_crafter: recipe_candidates[-1].items
## レシピと素材を比較する
execute store result storage pretty_crafter: mismatch byte 1 run data modify storage pretty_crafter: _.items merge from storage pretty_crafter: _.recipe_items

## レシピを満たしていたらアイテムに移す(カスタム用)
execute if data storage pretty_crafter: {mismatch:false} run data modify storage pretty_crafter: items set from storage pretty_crafter: flipped

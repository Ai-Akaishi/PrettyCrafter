#> pretty_crafter:find/
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## マッチ結果リセット
data remove storage pretty_crafter: found

## itemsを左上に寄せる
function pretty_crafter:shrink/

## 空白テンプレート作成
data modify storage pretty_crafter: nulls set from storage pretty_crafter: items
execute if data storage pretty_crafter: nulls.0.0 run data modify storage pretty_crafter: nulls.0.0 set value "null"
execute if data storage pretty_crafter: nulls.0.1 run data modify storage pretty_crafter: nulls.0.1 set value "null"
execute if data storage pretty_crafter: nulls.0.2 run data modify storage pretty_crafter: nulls.0.2 set value "null"
execute if data storage pretty_crafter: nulls.1.0 run data modify storage pretty_crafter: nulls.1.0 set value "null"
execute if data storage pretty_crafter: nulls.1.1 run data modify storage pretty_crafter: nulls.1.1 set value "null"
execute if data storage pretty_crafter: nulls.1.2 run data modify storage pretty_crafter: nulls.1.2 set value "null"
execute if data storage pretty_crafter: nulls.2.0 run data modify storage pretty_crafter: nulls.2.0 set value "null"
execute if data storage pretty_crafter: nulls.2.1 run data modify storage pretty_crafter: nulls.2.1 set value "null"
execute if data storage pretty_crafter: nulls.2.2 run data modify storage pretty_crafter: nulls.2.2 set value "null"

## 定型レシピチェック
function pretty_crafter:find/shaped/
## 見つかっていない＆アイテムが読み込まれていれば不定形レシピチェック
execute unless data storage pretty_crafter: found if data storage pretty_crafter: items run function pretty_crafter:find/shapeless/

## レシピが見つかっていたらカスタム処理呼び出し
execute if data storage pretty_crafter: found.recipe.custom run function #pretty_crafter:custom

## 判定するアイテムをリセットする
data remove storage pretty_crafter: items
data remove storage pretty_crafter: flipped
data remove storage pretty_crafter: _
data remove storage pretty_crafter: recipe_candidates
data remove storage pretty_crafter: recipe_space
data remove storage pretty_crafter: category

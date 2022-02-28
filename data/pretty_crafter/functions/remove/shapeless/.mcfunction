### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## レシピアイテムをチェックするアイテムとして設定
data modify storage pretty_crafter: items set from storage pretty_crafter: recipe.items
## 不定形レシピを読み込む
function pretty_crafter:recipe/shapeless/

## 保持リストを初期化
data modify storage pretty_crafter: __.recipe_candidates set value []
## レシピが読み込まれていれば既に追加されているか確認
execute if data storage pretty_crafter: recipe_candidates[0] run function pretty_crafter:remove/shapeless/check_each
## 保持リストを新しいレシピとして戻す
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: __.recipe_candidates
data remove storage pretty_crafter: __

## レシピを更新する
function #pretty_crafter:recipe/load
execute if data storage pretty_crafter: {count:9} run data modify storage pretty_crafter: recipes.shapeless.c9 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: {count:8} run data modify storage pretty_crafter: recipes.shapeless.c8 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: {count:7} run data modify storage pretty_crafter: recipes.shapeless.c7 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: {count:6} run data modify storage pretty_crafter: recipes.shapeless.c6 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: {count:5} run data modify storage pretty_crafter: recipes.shapeless.c5 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: {count:4} run data modify storage pretty_crafter: recipes.shapeless.c4 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: {count:3} run data modify storage pretty_crafter: recipes.shapeless.c3 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: {count:2} run data modify storage pretty_crafter: recipes.shapeless.c2 set from storage pretty_crafter: recipe_candidates
function #pretty_crafter:recipe/update
data remove storage pretty_crafter: recipes

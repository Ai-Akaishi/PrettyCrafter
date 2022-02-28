### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 完成品に個数が設定されていなければ1bに設定
execute if data storage pretty_crafter: recipe.result{} unless data storage pretty_crafter: recipe.result.Count run data modify storage pretty_crafter: recipe.result.Count set value 1b
## 完成品が複数の場合は個別にチェック
execute if data storage pretty_crafter: recipe.result[0] run function pretty_crafter:add/modify_count/

## レシピアイテムをチェックするアイテムとして設定
data modify storage pretty_crafter: items set from storage pretty_crafter: recipe.items
## itemsを左上に寄せる
function pretty_crafter:shrink/
## 定型レシピを読み込む
function pretty_crafter:recipe/shaped/

## レシピを退避
data modify storage pretty_crafter: __.recipe_candidates set from storage pretty_crafter: recipe_candidates
## レシピが読み込まれていれば既に追加されているか確認
data remove storage pretty_crafter: found
execute if data storage pretty_crafter: recipe_candidates[0] run function pretty_crafter:find/shaped/check
## 退避したデータを戻す
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: __.recipe_candidates
data remove storage pretty_crafter: __
## レシピが見つかっていなければ追加
execute unless data storage pretty_crafter: found run data modify storage pretty_crafter: recipe_candidates append from storage pretty_crafter: recipe
## レシピが見つかっていたらエラー表示
execute if data storage pretty_crafter: found run function pretty_crafter:add/error

## レシピを更新する
function #pretty_crafter:recipe/load
execute if data storage pretty_crafter: grid_size{v:3,h:3} run data modify storage pretty_crafter: recipes.shaped.v3.h3 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: grid_size{v:3,h:2} run data modify storage pretty_crafter: recipes.shaped.v3.h2 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: grid_size{v:3,h:1} run data modify storage pretty_crafter: recipes.shaped.v3.h1 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: grid_size{v:2,h:3} run data modify storage pretty_crafter: recipes.shaped.v2.h3 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: grid_size{v:2,h:2} run data modify storage pretty_crafter: recipes.shaped.v2.h2 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: grid_size{v:2,h:1} run data modify storage pretty_crafter: recipes.shaped.v2.h1 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: grid_size{v:1,h:3} run data modify storage pretty_crafter: recipes.shaped.v1.h3 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: grid_size{v:1,h:2} run data modify storage pretty_crafter: recipes.shaped.v1.h2 set from storage pretty_crafter: recipe_candidates
execute if data storage pretty_crafter: grid_size{v:1,h:1} run data modify storage pretty_crafter: recipes.shaped.v1.h1 set from storage pretty_crafter: recipe_candidates
function #pretty_crafter:recipe/update
data remove storage pretty_crafter: recipes

### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 不定形レシピを読み込む
data modify storage pretty_crafter: recipe_candidates set value []
## 個数をカウント
execute store result storage pretty_crafter: count int 1 if data storage pretty_crafter: items[]
## レシピ読み込み
function #pretty_crafter:recipe/load
execute if data storage pretty_crafter: {count:9} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c9
execute if data storage pretty_crafter: {count:8} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c8
execute if data storage pretty_crafter: {count:7} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c7
execute if data storage pretty_crafter: {count:6} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c6
execute if data storage pretty_crafter: {count:5} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c5
execute if data storage pretty_crafter: {count:4} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c4
execute if data storage pretty_crafter: {count:3} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c3
execute if data storage pretty_crafter: {count:2} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c2
data remove storage pretty_crafter: recipes

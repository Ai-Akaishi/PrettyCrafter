### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 不定形レシピを読み込む
data modify storage pretty_crafter: recipe_candidates set value []
## レシピ読み込み
function #pretty_crafter:recipe/load

## レシピを更新する
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c2
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shapeless.c2 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c3
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shapeless.c3 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c4
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shapeless.c4 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c5
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shapeless.c5 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c6
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shapeless.c6 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c7
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shapeless.c7 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c8
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shapeless.c8 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shapeless.c9
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shapeless.c9 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v1.h1
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shaped.v1.h1 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v1.h2
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shaped.v1.h2 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v1.h3
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shaped.v1.h3 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v2.h1
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shaped.v2.h1 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v2.h2
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shaped.v2.h2 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v2.h3
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shaped.v2.h3 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v3.h1
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shaped.v3.h1 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v3.h2
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shaped.v3.h2 set from storage pretty_crafter: recipe_candidates
data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v3.h3
function pretty_crafter:remove/all/check
data modify storage pretty_crafter: recipes.shaped.v3.h3 set from storage pretty_crafter: recipe_candidates

function #pretty_crafter:recipe/update
data remove storage pretty_crafter: recipes

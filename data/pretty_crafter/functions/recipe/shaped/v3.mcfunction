### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## レシピ読み込み
function #pretty_crafter:recipe/load
## ３列なら3x3
execute if data storage pretty_crafter: grid_size{h:3} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v3.h3
## ２列なら3x2
execute if data storage pretty_crafter: grid_size{h:2} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v3.h2
## １列なら3x1
execute if data storage pretty_crafter: grid_size{h:1} run data modify storage pretty_crafter: recipe_candidates set from storage pretty_crafter: recipes.shaped.v3.h1

data remove storage pretty_crafter: recipes

### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## レシピを持っているか
execute unless data storage pretty_crafter: recipe run tellraw @s {"translate":"レシピが指定されていません","color":"red"}
execute if data storage pretty_crafter: recipe unless data storage pretty_crafter: recipe.items run tellraw @s {"translate":"レシピの材料が指定されていません","color":"red"}
execute if data storage pretty_crafter: recipe unless data storage pretty_crafter: recipe.result run tellraw @s {"translate":"レシピの完成品が指定されていません","color":"red"}

execute if data storage pretty_crafter: recipe.items if data storage pretty_crafter: recipe.result run data modify storage pretty_crafter: validation.recipe set value true

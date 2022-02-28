### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## レシピを持っているか
execute unless data storage pretty_crafter: recipe run tellraw @s {"translate":"レシピが指定されていません","color":"red"}

execute if data storage pretty_crafter: recipe run data modify storage pretty_crafter: validation.recipe set value true

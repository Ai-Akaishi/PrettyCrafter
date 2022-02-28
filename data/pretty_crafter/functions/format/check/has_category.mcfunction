### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## カテゴリ存在チェック
## カテゴリが空のタグもダメ
data modify storage pretty_crafter: _ set value {}
execute if data storage pretty_crafter: recipe.category{} store result storage pretty_crafter: _ byte 1 run data modify storage pretty_crafter: _ merge from storage pretty_crafter: recipe.category
## カテゴリあってタグじゃないなら何でもOK
execute if data storage pretty_crafter: recipe.category unless data storage pretty_crafter: recipe.category{} run data modify storage pretty_crafter: _ set value true
execute unless data storage pretty_crafter: {_:true} run tellraw @s {"translate":"レシピのカテゴリが指定されていません","color":"red"}

execute store result storage pretty_crafter: validation.category byte 1 if data storage pretty_crafter: {_:true}

## 一時データリセット
data remove storage pretty_crafter: _

### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


## 不定形レシピの素材数をチェック
data modify storage pretty_crafter: _ set value true
## １つもないのはダメ
execute unless data storage pretty_crafter: recipe.items[0] run data modify storage pretty_crafter: _ set value false
## １０個以上もダメ
execute if data storage pretty_crafter: recipe.items[9] run data modify storage pretty_crafter: _ set value false
## タグなら定型レシピだからOK
execute if data storage pretty_crafter: recipe.items{} run data modify storage pretty_crafter: _ set value true
execute if data storage pretty_crafter: {_:false} run tellraw @s {"translate":"不定形レシピは１～９個のアイテムを指定してください","color":"red"}

data modify storage pretty_crafter: validation.count set from storage pretty_crafter: _

## 不定形レシピで１個だけの場合は定型レシピとして変換する
execute if data storage pretty_crafter: recipe.items[0] unless data storage pretty_crafter: recipe.items[1] run function pretty_crafter:format/convert

## 素材がタグだったら定型、タグじゃなかったら不定形
execute if data storage pretty_crafter: {_:true} if data storage pretty_crafter: recipe.items{} run data modify storage pretty_crafter: validation.type set value "shaped"
execute if data storage pretty_crafter: {_:true} unless data storage pretty_crafter: recipe.items{} run data modify storage pretty_crafter: validation.type set value "shapeless"

## 一時データリセット
data remove storage pretty_crafter: _

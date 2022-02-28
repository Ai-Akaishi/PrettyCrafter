### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 不定形レシピの生成
data modify storage pretty_crafter: result set value []
data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:12b}]
execute if data storage pretty_crafter: result[0] run data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:13b}]
execute if data storage pretty_crafter: result[1] run data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:14b}]
execute if data storage pretty_crafter: result[2] run data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:15b}]
execute if data storage pretty_crafter: result[3] run data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:16b}]
execute if data storage pretty_crafter: result[4] run data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:17b}]

## 不定形用に整形する
function pretty_crafter:line/

## 素材にスロットや個数は指定できない
data remove storage pretty_crafter: items[].Slot
data remove storage pretty_crafter: items[].Count
## 完成品にスロットは指定できない
data remove storage pretty_crafter: result[].Slot

## 結果の生成
data modify storage pretty_crafter: recipe.items set from storage pretty_crafter: items
execute if data storage pretty_crafter: result[1] run data modify storage pretty_crafter: recipe.result set from storage pretty_crafter: result
execute unless data storage pretty_crafter: result[1] run data modify storage pretty_crafter: recipe.result set from storage pretty_crafter: result[0]
data modify storage pretty_crafter: recipe.category set value {Name:"ここに好きなカテゴリーを設定してね"}

## 生成結果の通知
tellraw @s {"text":"・不定形レシピを生成しました。","bold":true}
tellraw @s ["data modify storage pretty_crafter: recipe set value ",{"nbt":"recipe","storage":"pretty_crafter:"}]
tellraw @s ["function #pretty_crafter:add"]

### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 不定形レシピの生成
data modify storage pretty_crafter: result set value []
data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:30b}]
execute if data storage pretty_crafter: result[0] run data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:31b}]
execute if data storage pretty_crafter: result[1] run data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:32b}]
execute if data storage pretty_crafter: result[2] run data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:33b}]
execute if data storage pretty_crafter: result[3] run data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:34b}]
execute if data storage pretty_crafter: result[4] run data modify storage pretty_crafter: result append from entity @s Inventory[{Slot:35b}]

## 不定形用に整形する
function pretty_crafter:shrink/

## nullを消す
execute unless data storage pretty_crafter: items.0.0{} run data remove storage pretty_crafter: items.0.0
execute unless data storage pretty_crafter: items.0.1{} run data remove storage pretty_crafter: items.0.1
execute unless data storage pretty_crafter: items.0.2{} run data remove storage pretty_crafter: items.0.2
execute unless data storage pretty_crafter: items.1.0{} run data remove storage pretty_crafter: items.1.0
execute unless data storage pretty_crafter: items.1.1{} run data remove storage pretty_crafter: items.1.1
execute unless data storage pretty_crafter: items.1.2{} run data remove storage pretty_crafter: items.1.2
execute unless data storage pretty_crafter: items.2.0{} run data remove storage pretty_crafter: items.2.0
execute unless data storage pretty_crafter: items.2.1{} run data remove storage pretty_crafter: items.2.1
execute unless data storage pretty_crafter: items.2.2{} run data remove storage pretty_crafter: items.2.2

## Slotを消す
data remove storage pretty_crafter: items.0.0.Slot
data remove storage pretty_crafter: items.0.1.Slot
data remove storage pretty_crafter: items.0.2.Slot
data remove storage pretty_crafter: items.1.0.Slot
data remove storage pretty_crafter: items.1.1.Slot
data remove storage pretty_crafter: items.1.2.Slot
data remove storage pretty_crafter: items.2.0.Slot
data remove storage pretty_crafter: items.2.1.Slot
data remove storage pretty_crafter: items.2.2.Slot
## Countを消す
data remove storage pretty_crafter: items.0.0.Count
data remove storage pretty_crafter: items.0.1.Count
data remove storage pretty_crafter: items.0.2.Count
data remove storage pretty_crafter: items.1.0.Count
data remove storage pretty_crafter: items.1.1.Count
data remove storage pretty_crafter: items.1.2.Count
data remove storage pretty_crafter: items.2.0.Count
data remove storage pretty_crafter: items.2.1.Count
data remove storage pretty_crafter: items.2.2.Count

## 完成品にスロットは指定できない
data remove storage pretty_crafter: result[].Slot

## 結果の生成
data modify storage pretty_crafter: recipe.items set from storage pretty_crafter: items
execute if data storage pretty_crafter: result[1] run data modify storage pretty_crafter: recipe.result set from storage pretty_crafter: result
execute unless data storage pretty_crafter: result[1] run data modify storage pretty_crafter: recipe.result set from storage pretty_crafter: result[0]
data modify storage pretty_crafter: recipe.category set value {Name:"ここに好きなカテゴリーを設定してね"}

## 生成結果の通知
tellraw @s {"text":"・定形レシピを生成しました。","bold":true}
tellraw @s ["data modify storage pretty_crafter: recipe set value ",{"nbt":"recipe","storage":"pretty_crafter:"}]
tellraw @s ["function #pretty_crafter:add"]

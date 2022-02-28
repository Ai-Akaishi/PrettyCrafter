### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 0.0 0.1 0.2
## 1.0 1.1 1.2
## 2.0 2.1 2.2
data modify storage pretty_crafter: items.0.0 set from entity @s Inventory[{Slot:9b}]
data modify storage pretty_crafter: items.0.1 set from entity @s Inventory[{Slot:10b}]
data modify storage pretty_crafter: items.0.2 set from entity @s Inventory[{Slot:11b}]
data modify storage pretty_crafter: items.1.0 set from entity @s Inventory[{Slot:18b}]
data modify storage pretty_crafter: items.1.1 set from entity @s Inventory[{Slot:19b}]
data modify storage pretty_crafter: items.1.2 set from entity @s Inventory[{Slot:20b}]
data modify storage pretty_crafter: items.2.0 set from entity @s Inventory[{Slot:27b}]
data modify storage pretty_crafter: items.2.1 set from entity @s Inventory[{Slot:28b}]
data modify storage pretty_crafter: items.2.2 set from entity @s Inventory[{Slot:29b}]

## 12bから横にアイテムが並んでいるなら不定形
execute if data entity @s Inventory[{Slot:12b}] run function pretty_crafter:recipe/generate/shapeless

## 12bにアイテムがなく、30bから横にアイテムが並んでいるなら定型
execute unless data entity @s Inventory[{Slot:12b}] if data entity @s Inventory[{Slot:30b}] run function pretty_crafter:recipe/generate/shaped

data remove storage pretty_crafter: items
data remove storage pretty_crafter: result
data remove storage pretty_crafter: recipe

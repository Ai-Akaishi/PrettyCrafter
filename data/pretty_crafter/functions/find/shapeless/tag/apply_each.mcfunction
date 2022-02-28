### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 存在するスロットに応じて変換
data modify storage pretty_crafter: _.id set from storage pretty_crafter: _.items[0].id
execute if data storage pretty_crafter: _.items[0].id run function pretty_crafter:find/shaped/tag/check
data modify storage pretty_crafter: _.items[0].id set from storage pretty_crafter: _.id

data modify storage pretty_crafter: _.id set from storage pretty_crafter: _.items[1].id
execute if data storage pretty_crafter: _.items[1].id run function pretty_crafter:find/shaped/tag/check
data modify storage pretty_crafter: _.items[1].id set from storage pretty_crafter: _.id

data modify storage pretty_crafter: _.id set from storage pretty_crafter: _.items[2].id
execute if data storage pretty_crafter: _.items[2].id run function pretty_crafter:find/shaped/tag/check
data modify storage pretty_crafter: _.items[2].id set from storage pretty_crafter: _.id

data modify storage pretty_crafter: _.id set from storage pretty_crafter: _.items[3].id
execute if data storage pretty_crafter: _.items[3].id run function pretty_crafter:find/shaped/tag/check
data modify storage pretty_crafter: _.items[3].id set from storage pretty_crafter: _.id

data modify storage pretty_crafter: _.id set from storage pretty_crafter: _.items[4].id
execute if data storage pretty_crafter: _.items[4].id run function pretty_crafter:find/shaped/tag/check
data modify storage pretty_crafter: _.items[4].id set from storage pretty_crafter: _.id

data modify storage pretty_crafter: _.id set from storage pretty_crafter: _.items[5].id
execute if data storage pretty_crafter: _.items[5].id run function pretty_crafter:find/shaped/tag/check
data modify storage pretty_crafter: _.items[5].id set from storage pretty_crafter: _.id

data modify storage pretty_crafter: _.id set from storage pretty_crafter: _.items[6].id
execute if data storage pretty_crafter: _.items[6].id run function pretty_crafter:find/shaped/tag/check
data modify storage pretty_crafter: _.items[6].id set from storage pretty_crafter: _.id

data modify storage pretty_crafter: _.id set from storage pretty_crafter: _.items[7].id
execute if data storage pretty_crafter: _.items[7].id run function pretty_crafter:find/shaped/tag/check
data modify storage pretty_crafter: _.items[7].id set from storage pretty_crafter: _.id

data modify storage pretty_crafter: _.id set from storage pretty_crafter: _.items[8].id
execute if data storage pretty_crafter: _.items[8].id run function pretty_crafter:find/shaped/tag/check
data modify storage pretty_crafter: _.items[8].id set from storage pretty_crafter: _.id

## まだタグがあれば繰り返し
data remove storage pretty_crafter: _.tags[-1]
execute if data storage pretty_crafter: _.tags[0] run function pretty_crafter:find/shapeless/tag/apply_each

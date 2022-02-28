### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 入れ換え時にカウントがなければ1bに設定
data modify storage pretty_crafter: recipe.result append from storage pretty_crafter: result[-1]
execute unless data storage pretty_crafter: recipe.result[-1].Count run data modify storage pretty_crafter: recipe.result[-1].Count set value 1b
data remove storage pretty_crafter: result[-1]
execute if data storage pretty_crafter: result[0] run function pretty_crafter:add/modify_count/check

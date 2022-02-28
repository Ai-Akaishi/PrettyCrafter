### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 順番を入れ替える
data modify storage pretty_crafter: result append from storage pretty_crafter: recipe.result[-1]
data remove storage pretty_crafter: recipe.result[-1]
execute if data storage pretty_crafter: recipe.result[0] run function pretty_crafter:add/modify_count/invert

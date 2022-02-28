### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 完成品リストを初期化
data modify storage pretty_crafter: result set value []
## 逆順にする
execute if data storage pretty_crafter: recipe.result[0] run function pretty_crafter:add/modify_count/invert
## 順番を戻しながら確認
execute if data storage pretty_crafter: result[0] run function pretty_crafter:add/modify_count/check

### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 削除対象でないアイテムを保存
data modify storage pretty_crafter: __.recipe_candidates append from storage pretty_crafter: recipe_candidates[-1]

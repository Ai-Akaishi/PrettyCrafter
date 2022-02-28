### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## タグ情報をコピー
data modify storage pretty_crafter: _.tags set from storage pretty_crafter: recipe_candidates[-1].tags
## タグに変換
execute if data storage pretty_crafter: _.tags[0] run function pretty_crafter:find/shaped/tag/apply_each

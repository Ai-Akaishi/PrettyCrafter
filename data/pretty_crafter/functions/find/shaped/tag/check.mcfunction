### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## タグに含まれるidならタグに置き換える
data modify storage pretty_crafter: _.ids set from storage pretty_crafter: _.tags[-1].ids
execute store result storage pretty_crafter: count1 int 1 if data storage pretty_crafter: _.ids[]
execute store result storage pretty_crafter: count2 int 1 run data modify storage pretty_crafter: _.ids[] set from storage pretty_crafter: _.id
execute store result storage pretty_crafter: tag_match byte 1 run data modify storage pretty_crafter: count1 set from storage pretty_crafter: count2
execute if data storage pretty_crafter: {tag_match:true} run data modify storage pretty_crafter: _.id set from storage pretty_crafter: _.tags[-1].tag

### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## アイテムのリストを作成
data modify storage pretty_crafter: _.items set value []
data modify storage pretty_crafter: _.items append from storage pretty_crafter: items.0.0{}
data modify storage pretty_crafter: _.items append from storage pretty_crafter: items.0.1{}
data modify storage pretty_crafter: _.items append from storage pretty_crafter: items.0.2{}
data modify storage pretty_crafter: _.items append from storage pretty_crafter: items.1.0{}
data modify storage pretty_crafter: _.items append from storage pretty_crafter: items.1.1{}
data modify storage pretty_crafter: _.items append from storage pretty_crafter: items.1.2{}
data modify storage pretty_crafter: _.items append from storage pretty_crafter: items.2.0{}
data modify storage pretty_crafter: _.items append from storage pretty_crafter: items.2.1{}
data modify storage pretty_crafter: _.items append from storage pretty_crafter: items.2.2{}
data modify storage pretty_crafter: items set from storage pretty_crafter: _.items

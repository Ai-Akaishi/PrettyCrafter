### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## グリッドの一番上の段を消す
data modify storage pretty_crafter: items.0 set from storage pretty_crafter: items.1
data modify storage pretty_crafter: items.1 set from storage pretty_crafter: items.2
data modify storage pretty_crafter: items.2 set value {0:null,1:null,2:null}

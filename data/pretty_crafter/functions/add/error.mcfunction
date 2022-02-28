### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 同一レシピがあればエラーを通知
tellraw @s [{"translate":"指定されたレシピは既に存在していたため、追加されませんでした","color":"red"}," ",{"translate":"(category:%1$sに存在)","color":"red","with":[{"nbt":"found.recipe.category","storage":"pretty_crafter:"}]}]
tellraw @s {"nbt":"recipe","storage":"pretty_crafter:","color":"red"}

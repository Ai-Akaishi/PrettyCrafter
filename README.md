# PrettyCrafter
(Minecraft 1.18+)A library datapack that makes it very easy to manage custom recipes.  
とても簡単にカスタムレシピを管理できるライブラリデータパック。

## 動作確認済みバージョン / Verified minecraft versions

- 1.18.1

## 依存ライブラリ / Dependencies

- PrettyCrafter  
  - [NaturalMergeSort](https://github.com/Ai-Akaishi/NaturalMergeSort)

## 使い方 / How To Use

### レシピ追加

#### 定型レシピ

```mcfunction
## グリッド上の配置は以下の通りです  
## 0.0, 0.1, 0.2  
## 1.0, 1.1, 1.2  
## 2.0, 2.1, 2.2  
  
## 1x1の場合は0.0のみ。  
## 2x2の場合は0.0 - 1.1まで使用します。  
  
## 素材アイテムを設定します。個数は設定できません。  
data modify storage pretty_crafter: recipe.items.0.0 set value {id:"minecraft:netherite_ingot"}  
data modify storage pretty_crafter: recipe.items.0.1 set value {id:"minecraft:netherite_ingot"}  
data modify storage pretty_crafter: recipe.items.1.0 set value {id:"minecraft:stick"}  
data modify storage pretty_crafter: recipe.items.1.1 set value {id:"minecraft:netherite_ingot"}  
data modify storage pretty_crafter: recipe.items.2.0 set value {id:"minecraft:stick"}  
  
## 完成品を設定します。個数も指定できます。完成品を複数種類指定したい場合はリストで設定します。  
data modify storage pretty_crafter: recipe.result set value {id:"minecraft:netherite_axe",tag:{Damage:0}}  
  
## レシピのカテゴリを指定します。好きな書き方でOKです。レシピ削除時に使います。  
data modify storage pretty_crafter: recipe.category set value {Name:"MyRecipe",Type:"NetheriteAxe"}  
  
## レシピを追加します。  
function #pretty_crafter:add
```

#### 不定形レシピ

```mcfunction
## 素材アイテムをリストで設定します。  
data modify storage pretty_crafter: recipe.items set value [{id:"minecraft:honey_bottle"},{id:"minecraft:apple"}]  
  
## 完成品を設定します。個数も指定できます。完成品を複数種類指定したい場合はリストで設定します。  
data modify storage pretty_crafter: recipe.result set value {id:"minecraft:potion",tag:{display:{Name:'{"text":"蜂蜜りんごジュース","italic":false,"color":"aqua"}'},CustomPotionColor:16766720,CustomPotionEffects:[{Id:23b,Amplifier:5b,Duration:1,ShowParticles:true}]}}  
  
## レシピのカテゴリを指定します。好きな書き方でOKです。レシピ削除時に使います。  
data modify storage pretty_crafter: recipe.category set value {Name:"MyRecipe",Type:"Juice"}  
  
## レシピを追加します。  
function #pretty_crafter:add
```

##### 注意

素材の対応が確定しないレシピでは正常にクラフトされない可能性があります。  
  
```mcfunction
data modify storage pretty_crafter: recipe.items set value [{id:"minecraft:diamond_sword",tag:{Attack:5}},{id:"minecraft:diamond_sword",tag:{Cure:3}}]  
## {id:"minecraft:diamond_sword",tag:{Attack:5,Cure:3}} のようにどの素材として扱うか確定しないアイテムが使われた場合、正常にクラフトされません。
```

#### タグによる指定

カスタムタグを使って複数の素材を使えるようにできます。  
  
```mcfunction
## カスタムタグを設定します。タグ名は何でもOKです。
data modify storage pretty_crafter: recipe.tags set value [{tag:"#my_recipe:any_planks",ids:["minecraft:oak_planks","minecraft:spruce_planks","minecraft:birch_planks","minecraft:jungle_planks","minecraft:acacia_planks","minecraft:dark_oak_planks","minecraft:crimson_planks","minecraft:warped_planks"]}]  
  
## タグを使ってアイテムを設定します。  
data modify storage pretty_crafter: recipe.items.0.1 set value {id:"#my_recipe:any_planks"}  
data modify storage pretty_crafter: recipe.items.1.0 set value {id:"#my_recipe:any_planks"}  
data modify storage pretty_crafter: recipe.items.1.1 set value {id:"minecraft:heart_of_the_sea"}  
data modify storage pretty_crafter: recipe.items.1.2 set value {id:"#my_recipe:any_planks"}  
data modify storage pretty_crafter: recipe.items.2.1 set value {id:"#my_recipe:any_planks"}  
  
## 完成品を設定します。個数も指定できます。完成品を複数種類指定したい場合はリストで設定します。  
data modify storage pretty_crafter: recipe.result set value {id:"minecraft:totem_of_undying",Count:4b}  
  
## レシピのカテゴリを指定します。好きな書き方でOKです。レシピ削除時に使います。  
data modify storage pretty_crafter: recipe.category set value {Name:"MyRecipe",Type:"Totem"}  
  
## レシピを追加します。  
function #pretty_crafter:add
```

### レシピ削除
  
```mcfunction
## 削除するレシピのアイテムを設定します。アイテムを指定しない場合、カテゴリを満たすレシピを全て削除します。  
data modify storage pretty_crafter: recipe.items.0.1 set value {id:"#my_recipe:any_planks"}  
data modify storage pretty_crafter: recipe.items.1.0 set value {id:"#my_recipe:any_planks"}  
data modify storage pretty_crafter: recipe.items.1.1 set value {id:"minecraft:heart_of_the_sea"}  
data modify storage pretty_crafter: recipe.items.1.2 set value {id:"#my_recipe:any_planks"}  
data modify storage pretty_crafter: recipe.items.2.1 set value {id:"#my_recipe:any_planks"}  
  
## レシピ追加時に指定したカテゴリを指定します。一部でもOKです。  
data modify storage pretty_crafter: recipe.category set value {Name:"MyRecipe"}  
  
## レシピを削除します。  
function #pretty_crafter:remove
```

### クラフト

```mcfunction
## グリッド上のアイテムを設定します。  
data modify storage pretty_crafter: items.0.0 set from block ~ ~ ~ Items[{Slot:0b}]  
data modify storage pretty_crafter: items.0.1 set from block ~ ~ ~ Items[{Slot:1b}]  
data modify storage pretty_crafter: items.0.2 set from block ~ ~ ~ Items[{Slot:2b}]  
data modify storage pretty_crafter: items.1.0 set from block ~ ~ ~ Items[{Slot:9b}]  
data modify storage pretty_crafter: items.1.1 set from block ~ ~ ~ Items[{Slot:10b}]  
data modify storage pretty_crafter: items.1.2 set from block ~ ~ ~ Items[{Slot:11b}]  
data modify storage pretty_crafter: items.2.0 set from block ~ ~ ~ Items[{Slot:18b}]  
data modify storage pretty_crafter: items.2.1 set from block ~ ~ ~ Items[{Slot:19b}]  
data modify storage pretty_crafter: items.2.2 set from block ~ ~ ~ Items[{Slot:20b}]  
  
## カテゴリを指定することもできます。(optional)
data modify storage pretty_crafter: category set value {Name:"MyRecipe"}
  
## 一致するレシピを見つけます。  
function #pretty_crafter:find  
  
## 一致するレシピが存在した場合、pretty_crafter: foundにデータが入っています。  
## pretty_crafter: found.items クラフト時の素材アイテムが入っています。不定形レシピの場合はリストに変換されています。  
## pretty_crafter: found.recipe.items(tags/result/custom/cagetory) レシピの各データが入っています。  
  
## クラフト結果に置き換えます。  
data modify block ~ ~ ~ Items set value []  
data modify block ~ ~ ~ Items append from storage pretty_crafter: found.recipe.result
```

### カスタム処理

カスタム処理を設定すると、クラフト素材等に応じた複雑なクラフトが出来るようになります。

#### レシピを追加

```mcfunction
## アイテムを設定します。  
data modify storage pretty_crafter: recipe.tags set value [{tag:"#my_recipe:any_netherite_tool",ids:["minecraft:netherite_pickaxe","minecraft:netherite_axe","minecraft:netherite_shovel","minecraft:netherite_hoe"]}]  
data modify storage pretty_crafter: recipe.items set value [{id:"#my_recipe:any_netherite_tool"},{id:"minecraft:enchanted_book"}]  
  
## 書き換える予定の完成品は好きな指定でOKです。  
data modify storage pretty_crafter: recipe.result set value {id:"custom"}  
  
## レシピのカテゴリを指定します。好きな書き方でOKです。レシピ削除時に使います。  
data modify storage pretty_crafter: recipe.category set value {Name:"MyRecipe",Type:"Enchantment"}  
  
## カスタム処理の識別ワードを指定します。好きな書き方でOKです。  
data modify storage pretty_crafter: recipe.custom set value {Name:"MyRecipe",Type:"Enchantment",Target:"NetheriteTool"}  
  
## レシピを追加します。  
function #pretty_crafter:add  
```

#### カスタム処理ファンクションを用意

```mcfunction
## my_datapack:craft/enchant  
## 例）ネザライトツールにエンチャント本のエンチャントを追加する  
data modify storage pretty_crafter: found.recipe.result set from storage pretty_crafter: found.items[0]  
execute if data storage pretty_crafter: found.recipe.result{id:"minecraft:enchanted_book"} run data modify storage pretty_crafter: found.recipe.result set from storage pretty_crafter: found.items[1]  
data modify storage pretty_crafter: found.recipe.result.tag.Enchantments append from storage pretty_crafter: found.items[{id:"minecraft:enchanted_book"}].tag.StoredEnchantments[]  
```

#### カスタム処理判定用ファンクションを用意

```mcfunction
## my_datapack:craft  
## ネザライトツールにエンチャントするレシピから呼び出されていたら処理を呼び出す  
execute if data storage pretty_crafter: found.recipe.custom{Name:"MyRecipe",Type:"Enchantment",Target:"NetheriteTool"} run function my_datapack:craft/enchant  
```

#### カスタム処理を登録するファンクションタグを用意

```json
MyDatapack/data/pretty_crafter/tags/functions/custom.json  
{  
	"values": [  
		"my_datapack:craft"  
	]  
}
```

### 専用レシピスペース

PrettyCrafterのファンクション呼び出し前にスペースを指定することで、専用のレシピ空間を利用できます。  
カテゴリでの絞り込みより軽く安全です。

#### タグファンクションを用意する

```json
MyDatapack/data/pretty_crafter/tags/functions/recipe/load.json  
{  
	"values": [  
		"my_datapack:recipe/load"  
	]  
}  
  
MyDatapack/data/pretty_crafter/tags/functions/recipe/update.json  
{  
	"values": [  
		"my_datapack:recipe/update"  
	]  
}  
```

#### レシピ割り当てファンクションを用意

```mcfunction
## my_datapack:recipe/load  
execute if data storage pretty_crafter: recipe_space{Name:"MyRecipeSpace"} run data modify storage pretty_crafter: recipes set from storage my_datapack: recipes  
  
## my_datapack:recipe/update  
execute if data storage pretty_crafter: recipe_space{Name:"MyRecipeSpace"} run data modify storage my_datapack: recipes set from storage pretty_crafter: recipes  
```

#### レシピ空間を指定して実行

```mcfunction
## レシピ空間を指定  
data storage pretty_crafter: recipe_space set value {Name:"MyRecipeSpace"}  
## 続けて検索・追加・削除を実行すると、指定した名前空間に対して行われます  
function #pretty_crafter:recipe/add  
  
data storage pretty_crafter: recipe_space set value {Name:"MyRecipeSpace"}  
function #pretty_crafter:recipe/find  
  
data storage pretty_crafter: recipe_space set value {Name:"MyRecipeSpace"}  
function #pretty_crafter:recipe/remove
```

### おまけ

#### レシピジェネレータ

インベントリにアイテムを並べて簡単なレシピコマンドを生成することができます。

```mcfunction
## インベントリを開いて左側3x3に素材アイテムを並べます。  
## 上段の左から４列目から完成品を並べて実行すると不定形レシピを  
## 下段の左から４列目から完成品を並べて実行すると定型レシピを生成します。  
function #pretty_crafter:generate  
```

## 連絡はこちら / Contact

<https://twitter.com/AiAkaishi>

## ライセンス / LICENSE

These codes are released under the MIT License, see LICENSE.

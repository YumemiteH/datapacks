# DATA

## yum:world 世界信息

- day *Int<1..80>* **日期**
- year *Int<1..>* **年份**
- x *Int* **世界出生点x坐标**
- y *Int* **世界出生点y坐标**
- z *Int* **世界出生点z坐标**

- blocks *[{}]* **区块信息**
  - x *Int* **区块x坐标**
  - y *Int* **区块y坐标**
  - z *Int* **区块z坐标**
  - sections *\[{}][384]* **区块中的小片区域 (4\*16\*4) 的信息**
    - index *Int* **该小片区域在区块中的序号**
    - biome *String\<Biome>* **该小片区域的生物群系**

## yum:entity 实体信息

- player *[{}]* **玩家数据**
  - uuid *Int[]* **玩家的uuid**
  - name *String* **玩家的名字**
  - mainhand_item *{}* **上一刻玩家主手的物品**
  - mainhand_item *{}* **上一刻玩家副手的物品**
  - looking_at *{}* **上一刻玩家所看向的方块的位置**
    - x *Int* x坐标
    - y *Int* y坐标
    - z *Int* z坐标

## yum:lib

## yum:minigame 小游戏

## yum:creator

## yum:data 临时数据

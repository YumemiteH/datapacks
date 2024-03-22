#

## 定义道具

`give @a $(物品id){yum:{action:{$(有效槽位1):[{trigger:$(触发器1), run:'$(触发效果)'}, ], }}}`

## 道具触发器

- tick (每一刻触发)
- attack (进行攻击时触发)
- hurt (受到伤害时触发)
- interact (与实体交互时触发)
- f (将物品切换到副手时触发)
- q (将物品丢出时触发)

## 道具槽位

- use (使用道具时触发，需要创建检测对应物品使用的记分板)
  - 直接填写 '触发效果'
- mainhand
- offhand
- head
- chest
- legs
- feets

## 数据值

[DATA](./data.md)
[SCORE](./score.md)

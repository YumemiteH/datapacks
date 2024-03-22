# -------------------------------------------------- define -------------------------------------------------- #

#define storage yum:main
#define storage yum:entity
#define storage yum:lib
#define storage yum:data
#define storage yum:minigame
#define storage yum:creator

# -------------------------------------------------- main -------------------------------------------------- #

## 创建记分板 保存数据
scoreboard objectives add yum dummy

## 设置默认的游戏规则
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule keepInventory true

# -------------------------------------------------- reminder -------------------------------------------------- #

## 开始游戏 30min 后提醒玩家休息
schedule function yum:reminder 1800s replace

# -------------------------------------------------- villager -------------------------------------------------- #

schedule function yum:villager/disable_trade 10t replace

# ------------------------------------------------------------------ 函数 ------------------------------------------------------------------ #
	保存执行者的物品栏
		/function yum:save_inventory
		- 最多保存 128 条记录，之后的记录会把最早的记录覆盖
		- 经验值也会被保存
		
	将执行者的物品栏恢复到上一次保存的状态
		/function yum:back_inventory
		- 恢复后最后的保存记录会被删除，如果还需要该保存记录以恢复到相同的状态，可以恢复后再保存一次
		- 恢复物品栏时，会将当前的物品栏覆盖
		- 经验值也会被恢复

	在起点到终点间(对角线)获取随机位置
		#> params
		# $dx : Int 随机位置的选取范围在x轴的大小
		# $dy : Int 随机位置的选取范围在y轴的大小
		# $dz : Int 随机位置的选取范围在z轴的大小
		/function yum:get_random_pos {dx, dy, dz}
		- 执行位置为起点
		- 产生的随机位置为 "at @e[tag=yum.random_pos]", 为整数位置(向下取整)
		- 每次运行此命令只产生一个随机位置

	获取时间戳
		/function yum:get_timestamp
		- 获取的名字存储在 "storage yum:data value.timestamp" 中
		- 时间戳的数据类型为字符串, 最后5位为时间, 前几位为天数

	获取实体的名字
		#> params
		# $entity : String<EntitySelector> 需要获取名字的实体
		/function yum:get_name {entity}
		- 获取的名字存储在 "storage yum:data value.name" 中
		- 需要使用时可以复制到目标位置或者执行函数时作为参数携带(with storage yum:data lib), 参数名为 $(playername)

	获取当前坐标
		/function yum:get_pos {store_x, store_y, store_z}

		@params
		store_x : String x坐标的存储w位置, 存储到数据时还需要规定数据类型和倍率
		store_y : String y坐标的存储w位置, 存储到数据时还需要规定数据类型和倍率
		store_z : String z坐标的存储w位置, 存储到数据时还需要规定数据类型和倍率

	高亮显示坐标
		/function yum:show_block {particle, interval}

		@params
		particle : Particle 显示的粒子
		interval : Int<%2=0> 显示的粒子的时间间隔
		- 在对应位置运行 /function yum:cancle_show_block 来取消该坐标的高亮显示

	获取看到的方块
		/function yum:get_sight_block {distance, front, ignore}

		@params
		distance : Int<1..128> 最大检测距离
		front : Boolean 是否获取前方的方块
		ignore : List<Block> 忽略的方块列表
		- 运行后会获取看到的方块的位置，并生成标记
		- 如果最大范围内未检测到任何方块，则会获取到最大范围处的位置，并将 "storage yum:data lib.sight.no_block" 设置为 true

# ------------------------------------------------------------------ 道具 ------------------------------------------------------------------ #
	胡萝卜钓竿为原型
		/give @p carrot_on_a_stick{yum:{item:{action:'$(右键使用道具运行命令)'}}}
		- 执行者和执行位置均为使用道具的玩家
		- 最大堆叠数量为 1
		- 有耐久机制
		- 可以直接右键点击任意地方使用, 且可以使用多次, 不能通过发射器使用
		- 在冒险模式下可随意使用

	末影珍珠为原型
		/give @p minecraft:ender_pearl{yum:{prop{action:'$(右键使用道具运行命令)'}}}
		- 执行者和执行位置均为使用道具的玩家
		- 最大堆叠数量为 16
		- 有1s冷却时间
		- 只能使用一次, 可以直接右键点击任意地方使用, 不能通过发射器使用
		- 在冒险模式下可随意使用

	刷怪蛋为原型
		/give @p ghast_spawn_egg{EntityTag:{id:"minecraft:marker", data:{action:'$(右键使用道具运行命令)'}, Tags:["yum.prop"]}}
		- 执行者为使用道具的玩家, 执行位置为点击放置的位置
		- 最大堆叠数量为 64
		- 只能使用一次, 且只能点击方块使用, 可以通过发射器使用
		- 在冒险模式下玩家无法直接使用, 只能通过发射器使用

	物品展示框为原型
		/give @p minecraft:item_frame{EntityTag:{Tags:['$(右键使用道具运行命令)', "yum..prop"], Silent:1b, Invisible:1b, Invulnerable:true}}
		- 执行者为使用道具的玩家, 执行位置为点击放置的位置
		- 最大堆叠数量为 64
		- 只能使用一次, 且只能点击完整的方块使用, 不能通过发射器使用
		- 在冒险模式下玩家添加 CanPlaceOn 属性使其在特定位置使用

	所有物品
		添加以下标签 手持物品运行命令
		yum.prop.mainhand:'$(主手持道具运行命令)'
		yum.prop.offhand:'$(副手持道具运行命令)'
	
	! 使用道具运行的命令内不能含有有单引号，如果需要，可以使用函数封装命令

# ------------------------------------------------------------------ 即将到来 ------------------------------------------------------------------ #
	将方块保存到数据中
		/function yum:stroe_block {store}

	获取看到的实体
		/function yum:get_sight_entity {distance:$(检测的最大范围)}
		- 忽略标记，交互实体等不可的实体
		- 检测到的实体将会被添加 "yum.lib.look_at" 标签

	获取下方的方块
		/function yum:get_bottom {distance:$(检测的最大范围)}
		- 

	获取上方的方块
		/function yum:get_top {distance:$(检测的最大范围)}
		- 

# ------------------------------------------------------------------ 数据值 ------------------------------------------------------------------ #
-- DATA --
yum:world 世界信息
	- time int<0..23999> 时间
	- day int<1..200> 日期
	- year int<1..> 年份
	- x int 世界出生点x坐标
	- y int 世界出生点y坐标
	- z int 世界出生点z坐标
	- blocks [{}] 区块信息
		- x int 区块x坐标
		- y int 区块y坐标
		- z int 区块z坐标
        - sections [{}][384] 区块中的小片区域(4*16*4)的信息
            - x int 该小片区域的x坐标
            - y int 该小片区域的y坐标
            - z int 该小片区域的z坐标
            - biome string<biome> 该小片区域的生物群系

yum:entity 实体信息
	- player [{}] 玩家数据
		- uuid int[] 玩家的uuid
		- name string 玩家的名字
		- saved_inventory [{}] 玩家保存的物品栏

yum:temp 临时数据

yum:minigame 小游戏

-- SCORE --
yum
.day 游戏天数 
.time 游戏当天时间
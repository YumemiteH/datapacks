#> yum:at_looking

#! 在看向的位置执行命令

#! @By
#! *

#! @Params $(with)
#! $(x) Int
#! $(y) Int
#! $(z) Int
#! $(run)* String<Commnad> : 在看向的位置执行的命令

#! @Data

#! @Score
#! ====================================================================================================
$execute if data storage yum:lib at_looking{at_front:true} positioned $(x) $(y) $(z) positioned ^ ^ ^-0.02 run return run $(run)
$execute positioned $(x) $(y) $(z) run $(run)

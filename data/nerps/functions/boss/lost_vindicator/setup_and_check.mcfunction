execute if entity @e[tag=Boss_Vindicator_Spawn,limit=1] run function nerps:boss/lost_vindicator/set_vindicator
execute if entity @e[tag=Boss_Vindicator,limit=1] run function nerps:boss/lost_vindicator/update_vindicator
execute if entity @e[tag=Boss_Vindicator_Spawn,limit=1] run kill @e[tag=Boss_Vindicator_Spawn]
execute unless entity @e[tag=Boss_Vindicator,limit=1] run function nerps:boss/lost_vindicator/dispawn

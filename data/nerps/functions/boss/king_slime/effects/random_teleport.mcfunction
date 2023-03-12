execute at @e[tag=Boos_Slime,limit=1] run tp @e[tag=Boos_Slime,limit=1] @p
execute as @e[tag=Boos_Slime,limit=1] run effect give @e[tag=Boos_Slime,limit=1] jump_boost 5 255 true
execute at @e[tag=Boos_Slime,limit=1] run playsound entity.shulker.teleport hostile @a[distance=..50]
execute at @e[tag=Boos_Slime,limit=1] run teleport @e[tag=Boos_Slime,limit=1] ~ ~10 ~
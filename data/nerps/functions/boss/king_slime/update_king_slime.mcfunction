bossbar add first {"text":"Slime King","color":"dark_blue","bold":true,"underlined":true}
execute if entity @e[tag=Boos_Slime,limit=1] run function nerps:boss/king_slime/boos_bar_spawn
bossbar set first style notched_10
bossbar set first color blue
bossbar set first max 340
execute store result bossbar first value run data get entity @e[limit=1,tag=Boos_Slime] Health
execute if entity @e[tag=Boos_Slime,limit=1] run function nerps:boss/king_slime/effect
execute as @r if entity @s[predicate=nerps:random] run function nerps:boss/king_slime/effects/random_teleport

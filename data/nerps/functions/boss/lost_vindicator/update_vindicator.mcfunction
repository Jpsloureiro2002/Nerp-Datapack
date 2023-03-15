bossbar add vindicator {"text":"Lost Vindicator","color":"dark_green","bold":true,"underlined":true}
execute at @e[tag=Boss_Vindicator,limit=1] run bossbar set vindicator players @a[distance=..50]
bossbar set vindicator style notched_10
bossbar set vindicator color green
bossbar set vindicator max 340
execute store result bossbar vindicator value run data get entity @e[limit=1,tag=Boss_Vindicator] Health
execute as @r if entity @s[predicate=nerps:random_vindicator] run function nerps:boss/lost_vindicator/vindicator_summon

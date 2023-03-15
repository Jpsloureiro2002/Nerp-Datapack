bossbar add vindicator {"text":"Lost Vindicator","color":"dark_green","bold":true,"underlined":true}
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

execute as @e[tag=Boss_Vindicator_Spawn,limit=1] store result score @s x run data get entity @s Pos[0]
execute as @e[tag=Boss_Vindicator_Spawn,limit=1] store result score @s y run data get entity @s Pos[1]
execute as @e[tag=Boss_Vindicator_Spawn,limit=1] store result score @s z run data get entity @s Pos[2]
execute if entity @e[tag=Boss_Vindicator_Spawn,limit=1] run bossbar set vindicator players @a[distance=..50]
execute at @e[tag=Boss_Vindicator_Spawn,limit=1] run playsound minecraft:entity.wither.shoot hostile @a[distance=..50] ~ ~ ~ 0.5
execute at @e[tag=Boss_Vindicator_Spawn,limit=1] run summon minecraft:vindicator ~ ~ ~ {CustomName:'[{"text":"Lost Vindicator","color":"dark_aqua"}]',CustomNameVisible:1b,Health:340,PersistenceRequired:1b,Tags:["Boss_Vindicator"],PatrolLeader:1b,HandItems:[{id:netherite_axe,tag:{Unbreakable:1,Enchantments:[{id:knockback,lvl:3},{id:sharpness,lvl:3}]},Count:0}],HandDropChances:[0.00f],ArmorItems:[{},{id:iron_nugget,tag:{display:{Name:'[{"text":"Divine Scraps","italic":false,"color":"yellow","bold":true}]',Lore:['[{"text":"This is a part of the jigsaw, save as many as you can.","italic":false}]','[{"text":"","italic":false}]','[{"text":"Somepeople say that can be","italic":false}]','[{"text":"used with items droped by gods","italic":false}]','[{"text":"and one and only one can","italic":false}]','[{"text":"conbine them... his name his An###.","italic":false}]']}},Count:1},{id:iron_nugget,tag:{display:{Name:'[{"text":"Divine Scraps","italic":false,"color":"yellow","bold":true}]',Lore:['[{"text":"This is a part of the jigsaw, save as many as you can.","italic":false}]','[{"text":"","italic":false}]','[{"text":"Somepeople say that can be","italic":false}]','[{"text":"used with items droped by gods","italic":false}]','[{"text":"and one and only one can","italic":false}]','[{"text":"conbine them... his name his An###.","italic":false}]']}},Count:2}],ArmorDropChances:[0f,0.60f,0.20f],Attributes:[{Name:"generic.armor",Base:10f},{Name:"generic.knockback_resistance",Base:0.3f},{Name:"generic.attack_damage",Base:15f},{Name:"generic.max_health",Base:340f}]}
execute as @e[tag=Boss_Vindicator_Spawn,limit=1] run tellraw @a ["",{"text":"[Lost Vindicator]","color":"dark_green"},{"text":" has been summoned at ","color":"yellow"},{"text":"[","color":"green"},{"score":{"name":"@s","objective":"x"},"color":"green"},{"text":" "},{"score":{"name":"@s","objective":"y"},"color":"green"},{"text":" "},{"score":{"name":"@s","objective":"z"},"color":"green"},{"text":"]","color":"green"}]
bossbar set vindicator style notched_10
bossbar set vindicator color blue
bossbar set vindicator max 340

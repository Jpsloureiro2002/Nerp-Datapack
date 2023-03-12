#summon minecraft:slime ~ ~ ~ {Size:10,CustomName:'[{"text":"King Slime"}]',Health:1000,Tags:["boss"],ActiveEffects:[{Id:12,Duration:1000000,Amplifier:1,ShowParticles:1b}],HandItems:[{id:nether_brick,Count:1}],Attributes:[{Name:"generic.attack_damage",Base:10f},{Name:"generic.max_health",Base:1000f}],HandDropChances:[0f]}
#execute at @e[name="King Slime"] run bossbar set 1 players @a[distance=..32]
#execute store result bossbar 1 max run attribute @e[name="King Slime", limit= 1] generic.max_health get
#execute store result bossbar 1 value run data get entity @e[name="King Slime", limit = 1] Health
#execute unless entity @e[name="King Slime"] run bossbar remove 1

summon zombie ~-3 ~ ~ {Glowing:1b,CustomNameVisible:1b,PersistenceRequired:1b,Tags:["Boss"],CustomName:'{"text":"Zombie Boss","color":"dark_purple","bold":true,"underlined":true}',HandItems:[{id:"minecraft:netherite_axe",Count:1b,tag:{Enchantments:[{}]}},{}]}
bossbar add first {"text":"Zombie Boss","color":"dark_purple","bold":true,"underlined":true}
execute if entity @e[tag=Boss,limit=1] run bossbar set first players @a
bossbar set first style notched_20
bossbar set first color red
bossbar set first max 20

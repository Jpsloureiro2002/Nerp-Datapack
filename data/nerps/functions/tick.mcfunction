#Katana Perticula
execute at @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{Tags:["katana_diamond_fire"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:4.5,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-12301,115155,16016,-230310]},{AttributeName:"generic.attack_speed",Amount:-0.2,Slot:mainhand,Operation:1,Name:"generic.attack_speed",UUID:[I;-12301,115255,16016,-230510]},{AttributeName:"generic.movement_speed",Amount:0.2,Slot:mainhand,Operation:1,Name:"generic.movement_speed",UUID:[I;-12301,115355,16016,-230710]},{AttributeName:"generic.armor",Amount:2,Slot:mainhand,Name:"generic.armor",UUID:[I;-12301,115455,16016,-230910]}],display:{Name:'[{"text":"Fire Katana","italic":false,"color":"gold"}]',Lore:['[{"text":"This baby can create a shield of fire around you and deals fire damage","italic":false}]']},Enchantments:[{id:"fire_aspect",lvl:1}],HideFlags:1}}}] run particle minecraft:flame ~ ~ ~ .9 1.5 .9 0.3 10
#Escudo
execute at @a[nbt={SelectedItem:{id:"minecraft:shield",tag:{Tags:["shield_turtle"],AttributeModifiers:[{AttributeName:"generic.max_health",Amount:0.30,Slot:mainhand,Operation:1,Name:"generic.max_health",UUID:[I;-12302,37572,1925,-75144]},{AttributeName:"generic.movement_speed",Amount:-0.40,Slot:mainhand,Operation:1,Name:"generic.movement_speed",UUID:[I;-12302,37672,1925,-75344]},{AttributeName:"generic.armor",Amount:10,Slot:mainhand,Name:"generic.armor",UUID:[I;-12302,37772,1925,-75544]},{AttributeName:"generic.armor_toughness",Amount:10,Slot:mainhand,Name:"generic.armor_toughness",UUID:[I;-12302,37872,1925,-75744]}],display:{Name:'[{"text":"Turtle Shield","italic":false,"color":"dark_green"}]',Lore:['[{"text":"You are litraly a Tank but you must only carry in the main hand.","italic":false}]']},HideFlags:2}}}] run effect give @p minecraft:resistance 1 3 true
#Efeito bota
execute as @a[nbt={Inventory:[{tag:{Tags:["slime_boots"],display:{Name:'[{"text":"Slime Boots","italic":false,"color":"green"}]',Lore:['[{"text":"Negate all fall damage","italic":false}]','[{"text":"and give\'s you jump boost","italic":false}]']},Enchantments:[{id:feather_falling,lvl:100}],HideFlags:1},Slot:100b}]}] run function nerps:effects/slime_boots
#summon and create a boss bar
execute if entity @e[tag=Boos_Slime_spawn,limit=1] run function nerps:boss/king_slime/set_king_slime
execute if entity @e[tag=Boos_Slime,limit=1] run function nerps:boss/king_slime/update_king_slime
execute if entity @e[tag=Boos_Slime_spawn,limit=1] run function nerps:boss/king_slime/kill_spawn_bat
execute unless entity @e[tag=Boos_Slime,limit=1] run function nerps:boss/king_slime/dispawn_king_slime
execute unless entity @e[tag=Boos_Slime,limit=1] run function nerps:boss/king_slime/effect
#check item
#ring slot 15,16,17
function nerps:effects/rings





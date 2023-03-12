recipe take @s nerps:spawn_eggs/king_slime
advancement revoke @s only nerps:crafts/king-slime_spawn_egg
give @p allay_spawn_egg{EntityTag:{id:bat,Health:1,NoAI:1b,Tags:["Boos_Slime_spawn"],ActiveEffects:[{Id:14,Duration:10,Amplifier:1,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1f}]},display:{Name:'[{"text":"Slime King","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Spawn Slime King","italic":false}]']}} 1
clear @s knowledge_book
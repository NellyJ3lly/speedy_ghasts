execute as @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_1] unless entity @s[tag=ghast_speed_1] run attribute @s flying_speed modifier add bunnycraft:hg_speed_1 0.2 add_multiplied_base
tag @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_1] add ghast_speed_1

execute as @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_2] unless entity @s[tag=ghast_speed_2] run attribute @s flying_speed modifier add bunnycraft:hg_speed_2 0.4 add_multiplied_base
attribute @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_2,tag=ghast_speed_1] minecraft:flying_speed modifier remove bunnycraft:hg_speed_1
tag @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_2,tag=ghast_speed_1] remove ghast_speed_1
tag @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_2] add ghast_speed_2

tag @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_1] add ghast_has_potion
tag @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_2] add ghast_has_potion

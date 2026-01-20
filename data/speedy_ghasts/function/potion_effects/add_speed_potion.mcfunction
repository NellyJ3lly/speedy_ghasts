execute as @s[predicate=speedy_ghasts:speed_1] unless entity @s[tag=ghast_speed_1] run attribute @s flying_speed modifier add speedy_ghasts:speed_1 0.2 add_multiplied_base
tag @s[predicate=speedy_ghasts:speed_2] add ghast_speed_1

execute as @s[predicate=speedy_ghasts:speed_2] unless entity @s[tag=ghast_speed_2] run attribute @s flying_speed modifier add speedy_ghasts:speed_2 0.4 add_multiplied_base
attribute @s[predicate=speedy_ghasts:speed_2,tag=ghast_speed_1] minecraft:flying_speed modifier remove speedy_ghasts:speed_1
tag @s[predicate=speedy_ghasts:speed_2,tag=ghast_speed_1] remove ghast_speed_1
tag @s[predicate=speedy_ghasts:speed_2] add ghast_speed_2

tag @s[predicate=speedy_ghasts:speed_1] add ghast_has_potion
tag @s[predicate=speedy_ghasts:speed_2] add ghast_has_potion
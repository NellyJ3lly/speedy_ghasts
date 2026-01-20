execute as @s[tag=!speedy_ghast] run function speedy_ghasts:base_speed/increase_base_speed with entity @s

execute as @s[tag=!ghast_above_320] run function speedy_ghasts:base_speed/increase_speed_above_320 with entity @s
execute as @s[tag=ghast_above_320,predicate=!speedy_ghasts:ghast_above_320] run function speedy_ghasts:base_speed/remove_speed_below_320 with entity @s

execute as @s[predicate=speedy_ghasts:speed_1] run function speedy_ghasts:potion_effects/add_speed_potion with entity @s
execute as @s[predicate=speedy_ghasts:speed_2] run function speedy_ghasts:potion_effects/add_speed_potion with entity @s

execute as @s[tag=ghast_speed_1,predicate=!speedy_ghasts:speed_1] run function speedy_ghasts:potion_effects/remove_speed_potion with entity @s
execute as @s[tag=ghast_speed_2,predicate=!speedy_ghasts:speed_2] run function speedy_ghasts:potion_effects/remove_speed_potion with entity @s
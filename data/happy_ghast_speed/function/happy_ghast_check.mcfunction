execute as @s unless entity @s[tag=speedy_ghast] run function happy_ghast_speed:increase_base_speed with entity @s

execute as @s unless entity @s[tag=ghast_above_320] run function happy_ghast_speed:increase_base_speed_if_above_320 with entity @s
execute as @s[tag=ghast_above_320] unless entity @s[predicate=happy_ghast_speed:happy_ghast_above_320] run function happy_ghast_speed:remove_base_speed_if_below_320 with entity @s

execute as @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_1] run function happy_ghast_speed:potion_effects/add_speed_potion with entity @s
execute as @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_2] run function happy_ghast_speed:potion_effects/add_speed_potion with entity @s

execute as @s[tag=ghast_speed_1] unless entity @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_1] run function happy_ghast_speed:potion_effects/remove_speed_potion with entity @s
execute as @s[tag=ghast_speed_2] unless entity @s[predicate=happy_ghast_speed:happy_ghast_speed_potion_2] run function happy_ghast_speed:potion_effects/remove_speed_potion with entity @s
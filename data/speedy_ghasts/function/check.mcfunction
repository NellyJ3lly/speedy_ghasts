function speedy_ghasts:base_speed/change_base_speed with storage speedy_ghast:settings
tag @s[tag=!speedy_ghast] add speedy_ghast

execute if data storage speedy_ghast:settings {can_boost_above_320:1} as @s[tag=!ghast_above_320] run function speedy_ghasts:base_speed/increase_speed_above_320 with storage speedy_ghast:settings
execute as @s[tag=ghast_above_320,predicate=!speedy_ghasts:ghast_above_320] run function speedy_ghasts:base_speed/remove_speed_below_320 with storage speedy_ghast:settings

execute if data storage speedy_ghast:settings {can_apply_potions:1} as @s[predicate=speedy_ghasts:has_speed] run function speedy_ghasts:potion_effects/add_speed_potion with entity @s

execute as @s[tag=ghast_has_potion,predicate=!speedy_ghasts:speed_1,predicate=!speedy_ghasts:speed_2] run function speedy_ghasts:potion_effects/remove_speed_potion with entity @s
execute as @e[type=minecraft:happy_ghast] run function speedy_ghasts:check with entity @s


execute unless score prev_base_speed speedy_ghast_settings = base_speed speedy_ghast_settings run function speedy_ghasts:config/store_base_speed
execute at @s positioned ~ ~-4 ~ if entity @n[type=happy_ghast] run function speedy_ghasts:potion_effects/give_potion with entity @s

advancement revoke @s only speedy_ghasts:player_give_hg_speed

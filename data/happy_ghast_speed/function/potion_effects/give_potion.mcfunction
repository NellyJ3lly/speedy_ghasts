execute if items entity @s weapon.mainhand potion[potion_contents={potion:"swiftness"}] positioned ~ ~-4 ~ unless entity @n[type=happy_ghast,tag=ghast_speed_2] run function happy_ghast_speed:potion_effects/apply_effect {seconds:180,amplifier:0}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_swiftness"}] run function happy_ghast_speed:potion_effects/apply_effect {seconds:90,amplifier:1}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_swiftness"}] unless entity @n[type=happy_ghast,tag=ghast_speed_2] run function happy_ghast_speed:potion_effects/apply_effect {seconds:480,amplifier:0}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"swiftness"}] positioned ~ ~-4 ~ if entity @n[type=minecraft:happy_ghast,distance=..1,tag=ghast_has_potion] run function happy_ghast_speed:potion_effects/remove_potion_item with entity @s
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_swiftness"}] positioned ~ ~-4 ~ if entity @n[type=minecraft:happy_ghast,distance=..1,tag=ghast_has_potion] run function happy_ghast_speed:potion_effects/remove_potion_item with entity @s
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_swiftness"}] positioned ~ ~-4 ~ if entity @n[type=minecraft:happy_ghast,distance=..1,tag=ghast_has_potion] run function happy_ghast_speed:potion_effects/remove_potion_item with entity @s

advancement revoke @s only happy_ghast_speed:player_give_hg_speed

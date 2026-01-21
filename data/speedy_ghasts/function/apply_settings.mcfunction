$data modify storage speedy_ghast:settings base_speed set value $(base_speed)
$data modify storage speedy_ghast:settings speed_above_320 set value $(speed_above_320)
$data modify storage speedy_ghast:settings can_boost_above_320 set value $(can_boost_above_320)
$data modify storage speedy_ghast:settings can_apply_potions set value $(can_apply_potions)

$scoreboard players set can_boost_above_320 speedy_ghast_settings $(can_boost_above_320)

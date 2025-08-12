##
 # edit_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
execute as @n[type=text_display,tag=top,tag=leaderboard] run function leaderboard:lb/get_score_from_display
function leaderboard:lb/kill_score_lines with storage leaderboard:update
$execute as @n[type=text_display,tag=top,tag=leaderboard] run data modify entity @s Tags set value ["leaderboard", "top", "max_players_$(max_players)", "display_$(score)"]

$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_1 matches $(reverse_order) run tag @s add reverse
$execute as @n[type=text_display,tag=top,tag=leaderboard] unless score dummy dummy_1 matches $(reverse_order) run tag @s remove reverse

$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_1 matches $(time_mode) run tag @s add time
$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_2 matches $(time_mode) run tag @s add full_time
$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_0 matches $(time_mode) run tag @s remove time
$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_2 matches $(time_mode) run tag @s remove time
$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_1 matches $(time_mode) run tag @s remove full_time
$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_0 matches $(time_mode) run tag @s remove full_time

$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_1 matches $(medal_color) run tag @s add medal_color
$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_0 matches $(medal_color) run tag @s remove medal_color

$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_1 matches $(no_zero) run tag @s add no_zero
$execute as @n[type=text_display,tag=top,tag=leaderboard] unless score dummy dummy_1 matches $(no_zero) run tag @s remove no_zero

$execute as @n[type=text_display,tag=top,tag=leaderboard] if score dummy dummy_1 matches $(always_show_closest_player) run tag @s add always_show_closest_player
$execute as @n[type=text_display,tag=top,tag=leaderboard] unless score dummy dummy_1 matches $(always_show_closest_player) run tag @s remove always_show_closest_player

$execute as @n[type=text_display,tag=top,tag=leaderboard] run data modify entity @s text set value '"$(display_name)"'
$execute as @n[type=text_display,tag=top,tag=leaderboard] run data modify entity @s billboard set value $(billboard)
execute as @s run function leaderboard:lb/set_rotation

$execute at @n[type=text_display,tag=top,tag=leaderboard,tag=display_$(score)] run kill @e[tag=display_$(score),type=text_display,tag=!top,tag=leaderboard]
schedule function leaderboard:lb/update_all_init 1t replace
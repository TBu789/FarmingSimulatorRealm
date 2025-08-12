##
 # update_line_init.mcfunction
 # 
 #
 # Created by DJT3.
##
execute unless score lb_temp time_mode matches 0 as @s run function leaderboard:lb/build_time_values with storage leaderboard:line
data modify storage leaderboard:line color set value "white"
$execute if score lb_temp medal_color matches 1 if score dummy dummy_1 matches $(rank) run data modify storage leaderboard:line color set value "#D6AF36"
$execute if score lb_temp medal_color matches 1 if score dummy dummy_2 matches $(rank) run data modify storage leaderboard:line color set value "#A7A7AD"
$execute if score lb_temp medal_color matches 1 if score dummy dummy_3 matches $(rank) run data modify storage leaderboard:line color set value "#A77044"

data modify storage leaderboard:line bold_name set value "false"
data modify storage leaderboard:line close_background set value 1
$execute as @s at @s if score lb_temp always_show_closest_player matches 1 if entity @p[distance=..10,name=$(name)] run data modify storage leaderboard:line bold_name set value "true"
$execute as @s at @s if score lb_temp always_show_closest_player matches 1 if entity @p[distance=..10,name=$(name)] run data modify storage leaderboard:line close_background set value 0

$execute store result storage leaderboard:line value int 1 run scoreboard players get $(name) $(score)
execute as @s run function leaderboard:lb/update_line with storage leaderboard:line
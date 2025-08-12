##
 # update_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
$data modify storage leaderboard:line score set value $(score)
$scoreboard players set lb_max temp_max $(max_players)
data modify storage leaderboard:line billboard set from entity @s billboard
execute as @s run function leaderboard:lb/sort_names with storage leaderboard:update

scoreboard players set lb_temp temp_lines 0
scoreboard players set lb_temp temp_rank 1

execute store result storage leaderboard:line rank int 1 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line lines int 1 run scoreboard players get lb_temp temp_lines
execute store result storage leaderboard:line sep double 0.30 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line sep_min double 0.29999999999 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line sep_max double 0.30000000001 run scoreboard players get lb_temp temp_rank

execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist_ordered names
execute as @s unless score lb_temp temp_rank > lb_temp namelist_size run function leaderboard:lb/add_line_prep with storage leaderboard:line

$execute as @s unless score lb_temp temp_lines matches $(max_players) run function leaderboard:lb/detect_remove_one_line with storage leaderboard:line
execute if score lb_temp line_killed matches 1 run say one got
execute if score lb_temp line_killed matches 1 as @s run function leaderboard:lb/remove_extra_line with storage leaderboard:line
execute if entity @s[tag=always_show_closest_player] as @s at @s if entity @p[distance=..10] run function leaderboard:lb/get_player_rank_init

$scoreboard players set lb_max temp_max $(max_players)
execute if entity @s[tag=always_show_closest_player] as @s at @s if score lb_temp temp_rank > lb_max temp_max if entity @p[distance=..10] run function leaderboard:lb/add_close_player_line with storage leaderboard:line
execute if entity @s[tag=always_show_closest_player] as @s at @s unless entity @p[distance=..10] run function leaderboard:lb/remove_closest_line
execute if entity @s[tag=always_show_closest_player] as @s at @s unless score lb_temp temp_rank > lb_max temp_max run function leaderboard:lb/remove_closest_line
##
 # sort_names.mcfunction
 # 
 #
 # Created by DJT3.
##
$data modify storage leaderboard:temp_player score set value $(score)

scoreboard players set lb_temp reverse_order 0
execute if entity @s[tag=reverse] run scoreboard players set lb_temp reverse_order 1

scoreboard players set lb_temp time_mode 0
execute if entity @s[tag=time] run scoreboard players set lb_temp time_mode 1
execute if entity @s[tag=full_time] run scoreboard players set lb_temp time_mode 2

scoreboard players set lb_temp medal_color 0
execute if entity @s[tag=medal_color] run scoreboard players set lb_temp medal_color 1

scoreboard players set lb_temp always_show_closest_player 0
execute if entity @s[tag=always_show_closest_player] run scoreboard players set lb_temp always_show_closest_player 1

# Reset output

data remove storage leaderboard:temp_namelist_ordered names
# Copy scoreboard of all players to temp_score_display

data modify storage leaderboard:temp_namelist names set from storage leaderboard:namelist names
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist names
execute unless score lb_temp namelist_size matches 0 run function leaderboard:lb/copy_all

data modify storage leaderboard:temp_namelist_unordered names set from storage leaderboard:namelist names
execute store result score lb_temp_unorderred namelist_size run data get storage leaderboard:temp_namelist_unordered names
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist_ordered names

$execute as @s unless score lb_temp_unorderred namelist_size matches 0 unless score lb_temp namelist_size matches $(max_players) run function leaderboard:lb/append_max_players with storage leaderboard:update

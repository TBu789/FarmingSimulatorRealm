##
 # uninstall.mcfunction
 # 
 #
 # Created by DJT3.
##
kill @e[type=text_display,tag=leaderboard]

function leaderboard:lb/remove_scoreboard_loop with storage leaderboard:all_leaderboard_scores

scoreboard objectives remove temp_score_display
scoreboard objectives remove temp_tag_valid 
scoreboard objectives remove namelist_size
scoreboard objectives remove index
scoreboard objectives remove dummy_0
scoreboard objectives remove dummy_1
scoreboard objectives remove dummy_2
scoreboard objectives remove dummy_3
scoreboard objectives remove dummy_5
scoreboard objectives remove dummy_20
scoreboard objectives remove dummy_60
scoreboard objectives remove reverse_order 
scoreboard objectives remove temp_nb_tags
scoreboard objectives remove temp_rank
scoreboard objectives remove temp_lines
scoreboard objectives remove temp_max
scoreboard objectives remove time_mode
scoreboard objectives remove medal_color
scoreboard objectives remove always_show_closest_player
scoreboard objectives remove init_state
scoreboard objectives remove line_killed
scoreboard objectives remove new_max
scoreboard objectives remove forceload_status
#old
scoreboard objectives remove update_index

scoreboard objectives remove value
scoreboard objectives remove value_0
scoreboard objectives remove value_1
scoreboard objectives remove value_2
scoreboard objectives remove value_3

#data remove storage leaderboard:namelist names
data remove storage leaderboard:temp_namelist names
data remove storage leaderboard:temp_namelist_ordered names
data remove storage leaderboard:temp_namelist_unordered names
data remove storage leaderboard:line score
data remove storage leaderboard:line rank
data remove storage leaderboard:line lines
data remove storage leaderboard:line sep
data remove storage leaderboard:line sep_min
data remove storage leaderboard:line sep_max
data remove storage leaderboard:line name
data remove storage leaderboard:line value
data remove storage leaderboard:line value_0
data remove storage leaderboard:line value_1
data remove storage leaderboard:line value_2
data remove storage leaderboard:line value_3
data remove storage leaderboard:line max_players
data remove storage leaderboard:line billboard
data remove storage leaderboard:line color
data remove storage leaderboard:line bold_name
data remove storage leaderboard:line close_background
data remove storage leaderboard:temp_player player
data remove storage leaderboard:temp_player index
data remove storage leaderboard:temp_player score
data remove storage leaderboard:remove score
data remove storage leaderboard:all_leaderboard_scores score
data remove storage leaderboard:update score
data remove storage leaderboard:update crop_tag
data remove storage leaderboard:update tags
data remove storage leaderboard:update max_players
data remove storage leaderboard:update old_max_players
#remove old storages
data remove storage leaderboard:update_list score
data remove storage leaderboard:update_list UUID_0
data remove storage leaderboard:update_list UUID_1
data remove storage leaderboard:update_list UUID_2
data remove storage leaderboard:update_list UUID_3
data remove storage leaderboard:update_uuid UUID_0
data remove storage leaderboard:update_uuid UUID_1
data remove storage leaderboard:update_uuid UUID_2
data remove storage leaderboard:update_uuid UUID_3
data remove storage leaderboard:update UUID_0
data remove storage leaderboard:update UUID_1
data remove storage leaderboard:update UUID_2
data remove storage leaderboard:update UUID_3


datapack disable "file/LeaderBoards_1.21_v2.4"
datapack disable "file/LeaderBoards_1.21_v2.4.zip"
tellraw @s {"text":"Leaderboard Datapack Uninstalled successfully","color":"red"}
reload
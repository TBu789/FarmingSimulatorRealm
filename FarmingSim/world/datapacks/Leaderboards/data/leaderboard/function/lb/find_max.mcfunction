##
 # find_max.mcfunction
 # 
 #
 # Created by DJT3.
##
data modify storage leaderboard:temp_player player set from storage leaderboard:temp_namelist names[-1]
data remove storage leaderboard:temp_namelist names[-1]
scoreboard players operation lb_max temp_max = lb_max temp_score_display
function leaderboard:lb/max_score with storage leaderboard:temp_player
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist names
execute unless score lb_max temp_max = lb_max temp_score_display run execute store result storage leaderboard:temp_namelist max_id int 1.0 run scoreboard players get lb_temp namelist_size
execute unless score lb_temp namelist_size matches 0 run function leaderboard:lb/find_max
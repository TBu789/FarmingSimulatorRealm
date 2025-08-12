##
 # copy_all.mcfunction
 # 
 #
 # Created by DJT3.
##

data modify storage leaderboard:temp_player player set from storage leaderboard:temp_namelist names[-1]
data remove storage leaderboard:temp_namelist names[-1]
function leaderboard:lb/copy_score with storage leaderboard:temp_player
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist names
execute unless score lb_temp namelist_size matches 0 run function leaderboard:lb/copy_all
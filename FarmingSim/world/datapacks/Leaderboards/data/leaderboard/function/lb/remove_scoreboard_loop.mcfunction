##
 # remove_scoreboard_loop.mcfunction
 # 
 #
 # Created by DJT3.
##

data modify storage leaderboard:remove score set from storage leaderboard:all_leaderboard_scores score[-1]
execute run function leaderboard:lb/remove_scoreboard with storage leaderboard:remove
execute store result score remove namelist_size run data get storage leaderboard:all_leaderboard_scores score
execute unless score remove namelist_size matches 0 run function leaderboard:lb/remove_scoreboard_loop
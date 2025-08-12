##
 # get_player_rank_init.mcfunction
 # 
 #
 # Created by DJT3.
##
data modify storage leaderboard:temp_namelist names set from storage leaderboard:namelist names
scoreboard players set lb_temp temp_rank 0
execute as @s run function leaderboard:lb/get_player_rank
data modify storage leaderboard:line name set from storage leaderboard:temp_player close_player

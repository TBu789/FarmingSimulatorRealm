##
 # add_player_to_ordered.mcfunction
 # 
 #
 # Created by DJT3.
##
#say lol
$execute if entity @s[tag=!no_zero] run data modify storage leaderboard:temp_namelist_ordered names append from storage leaderboard:temp_namelist_unordered names[$(max_id)]
$execute if entity @s[tag=no_zero] unless score lb_max temp_score_display matches 0 run data modify storage leaderboard:temp_namelist_ordered names append from storage leaderboard:temp_namelist_unordered names[$(max_id)]
$data remove storage leaderboard:temp_namelist_unordered names[$(max_id)]
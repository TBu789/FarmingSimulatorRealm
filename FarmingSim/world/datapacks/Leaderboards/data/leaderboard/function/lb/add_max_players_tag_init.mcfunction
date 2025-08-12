##
 # add_max_players_tag_init.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute store result storage leaderboard:update old_max_players int 1 run scoreboard players get lb_temp display_$(score)_maxlines
execute as @s run function leaderboard:lb/add_max_players_tag with storage leaderboard:update
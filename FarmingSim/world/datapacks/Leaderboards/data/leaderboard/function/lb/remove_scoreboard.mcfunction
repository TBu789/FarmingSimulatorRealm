##
 # remove_scoreboard.mcfunction
 # 
 #
 # Created by DJT3.
##
$scoreboard objectives remove display_$(score)_maxlines
data remove storage leaderboard:all_leaderboard_scores score[-1]
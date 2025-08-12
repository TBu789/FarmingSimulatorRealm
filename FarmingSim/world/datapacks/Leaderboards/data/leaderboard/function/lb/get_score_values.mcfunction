##
 # get_score_values.mcfunction
 # 
 #
 # Created by DJT3.
##
$scoreboard players operation lb_temp value = $(close_player) $(score)
$scoreboard players operation lb_temp temp_max = $(player) $(score)
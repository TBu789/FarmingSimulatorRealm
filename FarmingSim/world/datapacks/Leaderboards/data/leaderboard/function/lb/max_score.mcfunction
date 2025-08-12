##
 # max_score.mcfunction
 # 
 #
 # Created by DJT3.
##

$execute if score lb_temp reverse_order >= dummy dummy_1 run scoreboard players operation lb_max temp_score_display < $(player) temp_score_display
$execute unless score lb_temp reverse_order >= dummy dummy_1 run scoreboard players operation lb_max temp_score_display > $(player) temp_score_display
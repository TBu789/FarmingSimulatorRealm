##
 # add_max_players_tag.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute if score lb_temp temp_tag_valid matches 0 run tag @s add max_players_$(old_max_players)
##
 # detect_remove_one_line.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute store success score lb_temp line_killed at @s run kill @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)]
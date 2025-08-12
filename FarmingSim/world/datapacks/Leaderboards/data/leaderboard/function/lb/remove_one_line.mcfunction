##
 # remove_one_line.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute at @s run kill @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)]
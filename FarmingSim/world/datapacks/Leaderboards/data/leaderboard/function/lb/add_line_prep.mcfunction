##
 # add_line_prep.mcfunction
 # 
 #
 # Created by DJT3.
##
$data modify storage leaderboard:line name set from storage leaderboard:temp_namelist_ordered names[$(lines)]
execute as @s run function leaderboard:lb/add_line with storage leaderboard:line
execute as @s run function leaderboard:lb/update_line_init with storage leaderboard:line

scoreboard players operation lb_temp temp_lines += dummy dummy_1
scoreboard players operation lb_temp temp_rank = lb_temp temp_lines
scoreboard players operation lb_temp temp_rank += dummy dummy_1
execute store result storage leaderboard:line rank int 1 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line lines int 1 run scoreboard players get lb_temp temp_lines
execute store result storage leaderboard:line sep double 0.30 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line sep_min double 0.29999999999 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line sep_max double 0.30000000001 run scoreboard players get lb_temp temp_rank

execute unless score lb_temp temp_rank > lb_temp namelist_size as @s run function leaderboard:lb/add_line_prep with storage leaderboard:line